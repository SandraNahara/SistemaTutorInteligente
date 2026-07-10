import { geminiClient } from "../config/gemini.js";
import { env } from "../config/env.js";
import { AppError } from "../middlewares/errorMiddleware.js";

const retryableStatusCodes = ["429", "500", "502", "503", "504"];

const sleep = (milliseconds: number) =>
  new Promise((resolve) => {
    setTimeout(resolve, milliseconds);
  });

const isRetryableGeminiError = (error: unknown) => {
  const message = error instanceof Error ? error.message : String(error);

  return retryableStatusCodes.some((statusCode) =>
    message.includes(`[${statusCode}`)
  );
};

const getConfiguredModels = () =>
  Array.from(new Set([env.geminiModel, ...env.geminiFallbackModels]));

export const generateTutorAnswer = async (prompt: string) => {
  const models = getConfiguredModels();
  let lastError: unknown;

  for (const modelName of models) {
    const model = geminiClient.getGenerativeModel({ model: modelName });

    for (const delay of [0, 700, 1500]) {
      if (delay > 0) {
        await sleep(delay);
      }

      try {
        const result = await model.generateContent(prompt);
        const answer = result.response.text().trim();

        if (!answer) {
          throw new AppError("Gemini no devolvio una respuesta valida.", 502);
        }

        return answer;
      } catch (error) {
        if (error instanceof AppError) {
          throw error;
        }

        lastError = error;

        if (!isRetryableGeminiError(error)) {
          break;
        }

        console.warn("[gemini:retry]", {
          model: modelName,
          delay,
          message:
            error instanceof Error
              ? error.message
              : "Error desconocido al generar respuesta."
        });
      }
    }
  }

  console.error("[gemini:error]", {
    models,
    name: lastError instanceof Error ? lastError.name : "UnknownError",
    message:
      lastError instanceof Error
        ? lastError.message
        : "Error desconocido al generar respuesta."
  });

  throw new AppError(
    "No se pudo conectar con Gemini. Intenta nuevamente mas tarde.",
    502
  );
};
