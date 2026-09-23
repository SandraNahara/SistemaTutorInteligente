import type { SupabaseClient } from "@supabase/supabase-js";
import { AppError } from "../middlewares/errorMiddleware.js";

export type KnowledgeContext = {
  topics: {
    id: string;
    unit: string;
    topic: string;
    subtopic: string | null;
    description: string;
    keywords: string[];
  }[];
  materials: {
    id: string;
    topic_id: string;
    title: string;
    content: string;
    source: string | null;
    type: string;
  }[];
};

const normalizeSearchText = (value: string) =>
  value
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/[^a-z0-9\s]/g, " ")
    .replace(/\s+/g, " ")
    .trim();

const importantShortTerms = new Set(["avl", "bst", "c", "fifo", "lifo", "tda"]);
const maxKnowledgeTopics = 5;
const maxKnowledgeMaterials = 6;

const extractSearchTerms = (message: string, topic?: string) => {
  const base = normalizeSearchText(`${topic ?? ""} ${message}`);
  const terms = base
    .split(" ")
    .filter((term) => term.length >= 4 || importantShortTerms.has(term))
    .slice(0, 12);

  return Array.from(new Set(terms));
};

const mergeTopicsById = (
  ...groups: (KnowledgeContext["topics"] | null | undefined)[]
) => {
  const merged = new Map<string, KnowledgeContext["topics"][number]>();

  groups.flatMap((group) => group ?? []).forEach((topic) => {
    merged.set(topic.id, topic);
  });

  return Array.from(merged.values()).slice(0, maxKnowledgeTopics);
};

export const findKnowledgeContext = async (
  supabase: SupabaseClient,
  message: string,
  topic?: string
): Promise<KnowledgeContext> => {
  const terms = extractSearchTerms(message, topic);

  if (terms.length === 0) {
    return { topics: [], materials: [] };
  }

  const orFilter = terms
    .map(
      (term) =>
        `topic.ilike.%${term}%,subtopic.ilike.%${term}%,description.ilike.%${term}%`
    )
    .join(",");

  const [textTopicsResult, keywordTopicsResult] = await Promise.all([
    supabase
      .from("knowledge_topics")
      .select("id, unit, topic, subtopic, description, keywords")
      .or(orFilter)
      .limit(maxKnowledgeTopics),
    supabase
      .from("knowledge_topics")
      .select("id, unit, topic, subtopic, description, keywords")
      .overlaps("keywords", terms)
      .limit(maxKnowledgeTopics)
  ]);

  if (textTopicsResult.error || keywordTopicsResult.error) {
    throw new AppError("No se pudo recuperar el contexto academico.", 500);
  }

  const topicRows = mergeTopicsById(
    textTopicsResult.data as KnowledgeContext["topics"] | null,
    keywordTopicsResult.data as KnowledgeContext["topics"] | null
  );

  if (topicRows.length < maxKnowledgeTopics) {
    const { data: materialMatches, error: materialMatchesError } = await supabase
      .from("academic_materials")
      .select("topic_id")
      .or(terms.map((term) => `title.ilike.%${term}%,content.ilike.%${term}%`).join(","))
      .limit(maxKnowledgeTopics);

    if (materialMatchesError) {
      throw new AppError("No se pudo recuperar el contexto academico.", 500);
    }

    const missingTopicIds = Array.from(
      new Set((materialMatches ?? []).map((item) => item.topic_id))
    ).filter((id) => !topicRows.some((topicRow) => topicRow.id === id));

    if (missingTopicIds.length > 0) {
      const { data: materialTopics, error: materialTopicsError } = await supabase
        .from("knowledge_topics")
        .select("id, unit, topic, subtopic, description, keywords")
        .in("id", missingTopicIds)
        .limit(maxKnowledgeTopics - topicRows.length);

      if (materialTopicsError) {
        throw new AppError("No se pudo recuperar el contexto academico.", 500);
      }

      topicRows.push(...((materialTopics ?? []) as KnowledgeContext["topics"]));
    }
  }

  const topicIds = topicRows.map((item) => item.id);

  if (topicIds.length === 0) {
    return { topics: [], materials: [] };
  }

  const { data: materials, error: materialsError } = await supabase
    .from("academic_materials")
    .select("id, topic_id, title, content, source, type")
    .in("topic_id", topicIds)
    .limit(maxKnowledgeMaterials);

  if (materialsError) {
    throw new AppError("No se pudo recuperar el contexto academico.", 500);
  }

  return {
    topics: topicRows,
    materials: (materials ?? []) as KnowledgeContext["materials"]
  };
};
