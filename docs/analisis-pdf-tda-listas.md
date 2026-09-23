# Analisis del PDF TDA Listas_merged.pdf

Archivo analizado: `C:\Users\sandr\Downloads\TDA Listas_merged.pdf`

Extraccion realizada: 283 paginas, 69721 caracteres de texto.

## Hallazgos principales

El PDF no contiene menciones textuales a `AVL` ni `splay`. Por eso, si esos temas forman parte del programa real de la materia, deben agregarse como material complementario o cargarse desde otro PDF/fuente oficial.

Temas que si aparecen y conviene cubrir en el chatbot:

- Tipos de datos abstractos: abstraccion, interfaz, representacion, operaciones e implementaciones.
- Lenguaje C aplicado: `struct`, `typedef`, punteros, operador `->`, paso por valor y referencia, macros y validaciones.
- Memoria en C: memoria estatica, memoria dinamica, `malloc`, `calloc`, `free`, `sizeof`, punteros `void*`.
- Listas: TDA lista, operaciones insertar, buscar, borrar, es vacio, primero, ultimo, k-esimo.
- Listas con arreglos: almacenamiento contiguo, desplazamiento de elementos, costo O(N) para inserciones/borrados en ciertos casos.
- Listas enlazadas: nodos, punteros, nodo cabecera, implementacion en C.
- Variantes de listas: simples, doblemente enlazadas, circulares y doblemente circulares.
- Pilas: LIFO, `push`, `pop`, cima, pila vacia, implementacion con arreglos y listas enlazadas.
- Errores de pilas: overflow y underflow.
- Analisis de algoritmos: notacion O grande aplicada a operaciones de listas.
- Cola con prioridad: aparece como problema de turnero inteligente, pero no como desarrollo teorico extenso.

## Diagnostico del chatbot

Antes del ajuste, el prompt del tutor declaraba un alcance mas reducido: fundamentos, arreglos/listas/pilas/colas, busquedas, ordenamientos, recursividad y arboles binarios/BST. Faltaban varios temas presentes en el PDF, especialmente TDA, memoria dinamica, punteros, `struct`, `typedef`, nodo cabecera y variantes de listas.

Tambien habia un problema de recuperacion: `knowledgeService` descartaba terminos de menos de 4 caracteres. Eso dejaba fuera busquedas importantes como `TDA`, `AVL`, `BST`, `C`, `LIFO` y `FIFO`. Ademas, aunque la tabla tenia columna `keywords`, la busqueda no la usaba.

## Cambios aplicados

- Se amplio el alcance del prompt en `backend/src/services/promptService.ts`.
- Se mejoro la recuperacion de conocimiento en `backend/src/services/knowledgeService.ts` para buscar por `keywords`, materiales y terminos cortos importantes.
- Se enriquecio `database/seed-topics.sql` con temas y materiales extraidos del PDF.
- Se agregaron entradas de AVL y splay como ampliacion sugerida, marcadas como no presentes en el PDF analizado.

## Recomendacion

Para una mejora mas fuerte, conviene cargar todos los PDFs oficiales de la materia y crear semillas o embeddings por unidad. Con el PDF actual se puede mejorar mucho en TDA, listas y pilas, pero no se puede justificar AVL/splay como contenido extraido de este archivo.
