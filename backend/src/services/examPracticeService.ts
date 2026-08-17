const normalize = (value: string) =>
  value
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/\s+/g, " ")
    .trim();

export const isPreviousExamWithAnswersRequest = (message: string) => {
  const text = normalize(message);
  const asksForExam =
    text.includes("examen") ||
    text.includes("final") ||
    text.includes("ordinario") ||
    text.includes("anos anteriores") ||
    text.includes("años anteriores");
  const asksForAnswers =
    text.includes("respuesta") ||
    text.includes("resuelto") ||
    text.includes("solucion") ||
    text.includes("solucionario") ||
    text.includes("con respuestas");

  return asksForExam && asksForAnswers;
};

export const buildOriginalExamStylePractice = () => `# Practica original de AED I

No puedo reproducir ni reconstruir examenes anteriores de forma literal. En su lugar, te propongo una practica original con temas frecuentes de Algoritmos y Estructuras de Datos I para estudiar sin depender de enunciados oficiales.

## Parte 1 - Macro en C

**Enunciado de practica.** Dado el siguiente fragmento, indicar que ocurre al compilar y explicar por que:

\`\`\`c
#include <stdio.h>
#define bar() \
  int var = 10; \
  printf("var in bar: %d\\n", var)

void foo() {
  int var = 5;
  printf("var in foo: %d\\n", var);
  bar();
}

int main(int argc, char *argv[]) {
  foo();
}
\`\`\`

**Respuesta.** El macro se expande textualmente dentro de \`foo\`. Entonces queda otra declaracion \`int var = 10;\` en el mismo bloque donde ya existia \`int var = 5;\`. Eso produce error de redefinicion/conflicto de variable.

## Parte 2 - Complejidad Big O

**Enunciado de practica.** Determinar la complejidad:

\`\`\`c
for (int i = 0; i < A; i++) {
  for (int j = 0; j < B; j++) {
    for (int k = 0; k < 100000; k++) {
      printf("%d %d", i, j);
    }
  }
}
\`\`\`

**Respuesta.** La complejidad es **O(A * B)**. El tercer ciclo tiene una cantidad constante de iteraciones, por eso no cambia el orden asintotico.

## Parte 3 - Recorridos de arbol

**Enunciado de practica.** Para un arbol de expresion propuesto por el docente o por vos, indicar los recorridos preorden, inorden y postorden.

**Respuesta guia.**

- **Preorden:** raiz, subarbol izquierdo, subarbol derecho.
- **Inorden:** subarbol izquierdo, raiz, subarbol derecho.
- **Postorden:** subarbol izquierdo, subarbol derecho, raiz.

Si el arbol representa una expresion, el postorden suele coincidir con notacion postfix.

## Parte 4 - Underflow

**Enunciado de practica.** A que se denomina underflow? Da un ejemplo con pila y otro con cola.

**Respuesta.** Underflow es intentar extraer un elemento de una estructura vacia, por ejemplo hacer \`pop\` sobre una pila vacia o \`dequeue\` sobre una cola vacia.

## Parte 5 - Heap y HeapSort

**Enunciado de practica.** Definir monticulo y explicar HeapSort con sus pasos generales.

**Respuesta.** Un heap o monticulo es un arbol completo que cumple una propiedad de orden. En un max-heap, cada padre es mayor o igual que sus hijos; en un min-heap, cada padre es menor o igual.

HeapSort:

1. Construye un heap con los datos.
2. Intercambia la raiz con el ultimo elemento no ordenado.
3. Reduce el tamano logico del heap.
4. Reacomoda la raiz para restaurar la propiedad del heap.
5. Repite hasta ordenar.

Complejidad temporal: **O(n log n)**. Espacio adicional: normalmente **O(1)** si se implementa in-place.

## Parte 6 - AVL

**Enunciado de practica.** Insertar la secuencia \`5, 7, 6, 12, 8\` en un AVL e indicar en que momentos aparecen rotaciones.

**Respuesta resumida.**

- Insertar 5: queda como raiz.
- Insertar 7: se ubica a la derecha de 5.
- Insertar 6: genera caso derecha-izquierda, por lo que corresponde rotacion doble.
- Insertar 12: se agrega manteniendo balance.
- Insertar 8: se recalculan factores de balance y se rota solo si algun nodo queda fuera de -1, 0, 1.

La regla importante es calcular el factor de balance despues de cada insercion y distinguir casos LL, RR, LR y RL.

## Parte 7 - Pila con arreglo en C

**Enunciado de practica.** Implementar \`create\`, \`push\`, \`pop\` e \`isEmpty\` para una pila con arreglo.

**Respuesta guia.**

\`\`\`c
typedef struct _stack {
  void **arr;
  int cap;
  int sp;
} Stack;
\`\`\`

- \`create\`: reserva memoria para \`Stack\` y para \`arr\`.
- \`push\`: valida que la pila no este llena; guarda en \`arr[sp]\` y luego incrementa \`sp\`.
- \`pop\`: valida que no este vacia; decrementa/consulta \`sp\` y devuelve el valor por parametro \`void **valor\`.
- \`isEmpty\`: retorna si \`sp == 0\`.

## Parte 8 - Induccion

**Enunciado de practica.** Probar: \`3 + 5 + 7 + ... + (2n + 1) = n(n + 2)\`.

**Respuesta resumida.**

1. Caso base: para \`n = 1\`, izquierda \`= 3\` y derecha \`= 1(3) = 3\`.
2. Hipotesis: asumir que para \`n = k\`, \`3 + 5 + ... + (2k + 1) = k(k + 2)\`.
3. Paso inductivo: para \`k + 1\`, se suma el siguiente termino \`2(k+1)+1 = 2k+3\`.
4. Entonces: \`k(k+2) + (2k+3) = k^2 + 4k + 3 = (k+1)(k+3)\`.
5. Como \`(k+1)((k+1)+2) = (k+1)(k+3)\`, queda probado.

## Como practicar

Intenta resolver primero una parte sin mirar la respuesta. Luego compara tu razonamiento con el solucionario y pedime que te corrija una parte especifica.
`;
