import type { SupabaseClient } from "@supabase/supabase-js";

export type KnowledgeContext = {
  topics: {
    id: string;
    unit: string;
    topic: string;
    subtopic: string | null;
    difficulty: string;
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
    difficulty: string;
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

const importantShortTerms = new Set([
  "avl",
  "bst",
  "c",
  "fifo",
  "lifo",
  "tda"
]);

const maxKnowledgeTopics = 5;
const maxKnowledgeMaterials = 4;

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

  const [{ data: textTopics }, { data: keywordTopics }] = await Promise.all([
    supabase
      .from("knowledge_topics")
      .select("id, unit, topic, subtopic, difficulty, description, keywords")
      .or(orFilter)
      .limit(maxKnowledgeTopics),
    supabase
      .from("knowledge_topics")
      .select("id, unit, topic, subtopic, difficulty, description, keywords")
      .overlaps("keywords", terms)
      .limit(maxKnowledgeTopics)
  ]);

  const topicRows = mergeTopicsById(
    textTopics as KnowledgeContext["topics"] | null,
    keywordTopics as KnowledgeContext["topics"] | null
  );

  if (topicRows.length < maxKnowledgeTopics) {
    const { data: materialMatches } = await supabase
      .from("academic_materials")
      .select("topic_id")
      .or(terms.map((term) => `title.ilike.%${term}%,content.ilike.%${term}%`).join(","))
      .limit(maxKnowledgeTopics);

    const materialTopicIds = Array.from(
      new Set((materialMatches ?? []).map((item) => item.topic_id))
    );

    const missingTopicIds = materialTopicIds.filter(
      (id) => !topicRows.some((topicRow) => topicRow.id === id)
    );

    if (missingTopicIds.length > 0) {
      const { data: materialTopics } = await supabase
        .from("knowledge_topics")
        .select("id, unit, topic, subtopic, difficulty, description, keywords")
        .in("id", missingTopicIds)
        .limit(maxKnowledgeTopics - topicRows.length);

      topicRows.push(
        ...((materialTopics ?? []) as KnowledgeContext["topics"])
      );
    }
  }
  const topicIds = topicRows.map((item) => item.id);

  if (topicIds.length === 0) {
    return { topics: [], materials: [] };
  }

  const { data: materials } = await supabase
    .from("academic_materials")
    .select("id, topic_id, title, content, source, type, difficulty")
    .in("topic_id", topicIds)
    .limit(maxKnowledgeMaterials);

  return {
    topics: topicRows,
    materials: (materials ?? []) as KnowledgeContext["materials"]
  };
};
