# Analisis de resumenes y examenes de Algoritmos I

Archivos analizados:

- `AYUDITA C.pdf`: 20 paginas, texto extraible.
- `teorias C.pdf`: 6 paginas, texto extraible.
- `Ultimo final C.pdf`: 6 paginas, texto extraible.
- `Ordinario-Algoritmos-2021.pdf`: 5 paginas, casi sin texto extraible; se reviso por renderizado visual.
- `Final.pdf`: 5 paginas, casi sin texto extraible; se reviso por renderizado visual.
- `Resumen Algoritmos I.pdf`: 24 paginas, texto extraible.

## Temas nuevos detectados

- TDA pila: LIFO, push, pop, top, isEmpty, overflow y underflow.
- TDA cola: FIFO, enqueue, dequeue, front, isEmpty.
- Colas circulares: arreglo circular, frente, final y modulo.
- Arboles: altura, arboles binarios y recorridos preorden, inorden y postorden.
- Arboles de expresion: recorridos sobre operadores y operandos.
- AVL: insercion paso a paso, factor de balance y rotaciones.
- Splay: autoajuste, busqueda, insercion, eliminacion, zig, zig-zig y zig-zag.
- Monticulos o heaps: propiedad de orden, operaciones basicas y uso en colas de prioridad.
- HeapSort: construccion de heap, extraccion repetida y complejidad O(n log n).
- Colas binomiales: prioridad con arboles binomiales y union en O(log n).
- Big O: bucles anidados con multiples entradas y constantes.
- Induccion matematica: caso base, hipotesis inductiva y paso inductivo.
- Implementacion en C: macros de validacion, `struct`, `typedef`, `void*`, `void**`, `malloc`, `free`, pilas con arreglo y listas con arreglo.
- Analisis de errores en codigo de listas ligadas.

## Examenes revisados

Los examenes/finales repiten patrones importantes:

- Analizar un macro en C y explicar por que produce conflicto de variables.
- Determinar Big O de tres bucles anidados donde el ultimo tiene limite constante.
- Resolver recorridos de un arbol de expresion.
- Definir underflow.
- Explicar heap y heapSort.
- Insertar valores en un AVL indicando rotaciones.
- Implementar pilas/listas con arreglos en C.
- Probar formulas por induccion.

## Cambios aplicados al chatbot

- Se amplio el prompt del tutor para incluir heaps, heapSort, colas circulares, colas binomiales, induccion y practica tipo examen.
- Se agregaron temas nuevos a `database/seed-topics.sql`.
- Se agregaron materiales de teoria, guia y ejercicios tipo examen con fuentes de los PDFs.
- Los PDFs escaneados `Final.pdf` y `Ordinario-Algoritmos-2021.pdf` se usaron como referencia visual y como confirmacion de ejercicios repetidos, no como texto completo extraido.

## Recomendacion de uso

Despues de ejecutar nuevamente `database/seed-topics.sql` en Supabase, probar preguntas como:

- "Generame un ejercicio tipo final sobre Big O."
- "Explicame heapSort como en examen."
- "Como implemento una pila con arreglo en C?"
- "Que es una cola circular?"
- "Insertar 5, 7, 6, 12 y 8 en un AVL paso a paso."
- "Explicame arbol splay con zig-zig y zig-zag."
- "Ayudame a demostrar por induccion 3+5+7+...+(2n+1)=n(n+2)."
