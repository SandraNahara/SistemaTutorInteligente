# Alineacion con el programa oficial de AED I

Fuente revisada: `AlgoritmosyEstructurasdeDatosI.pdf`, programa aprobado por CD No. 065/2015, 4 paginas.

## Matriz de cobertura

| Unidad oficial | Contenido | Cobertura del tutor |
| --- | --- | --- |
| I | Macros, prototipos, arreglos, punteros simples y dobles | Prompt y temas/materiales canonicos de C |
| I | Memoria estatica y dinamica | Prompt y guia de ciclo de vida con `malloc`, `calloc`, `realloc` y `free` |
| I | Estructuras en C | Prompt y guia de `struct`/`typedef` |
| II | TDA; listas; pilas; colas; monticulos; colas binomiales | Ya cubiertos por la semilla y reforzados por el prompt |
| II | Arboles, ABB, AVL y Splay | Ya cubiertos por la semilla y el prompt |
| II | Huffman | Tema canonico, guia y alcance del prompt agregados |
| III | Correccion, terminacion, eficiencia y complejidad | Tema canonico y resumen agregados |
| III | Contradiccion e induccion | Contradiccion agregada; induccion ya estaba cubierta |
| III | Logaritmos | Tema canonico y resumen agregado |
| III | O-grande, o-pequena, Theta y Omega | Tema canonico y guia con definiciones y diferencias |
| III | Algoritmos recursivos | Tema canonico y guia de correccion, terminacion y recurrencias |
| IV | Burbuja, insercion y seleccion | Ya cubiertos |
| IV | Shell, Merge, Quick y Radix | Temas canonicos y fichas comparativas agregados |
| IV | HeapSort | Ya cubierto y agregado tambien con unidad oficial canonica |

## Criterios pedagogicos incorporados

- C y pseudocodigo tienen prioridad; JavaScript solo se usa si el estudiante lo pide.
- Los ordenamientos deben explicar tiempos por caso, espacio auxiliar, estabilidad e implementacion in-place.
- Los ejemplos de C deben usar prototipos, validar reservas, aclarar propiedad de punteros y evitar fugas.
- Las practicas siguen siendo originales y no se presentan como copias o reconstrucciones de examenes oficiales.

## Inconsistencias locales corregidas

- Se reemplazo la etiqueta `Enunciado original` por `Enunciado de practica` en una practica generada por el sistema.
- El ejercicio AVL ahora propone y resuelve la misma secuencia: `5, 7, 6, 12, 8`.
- Se elimino del prompt la prioridad de JavaScript, que no correspondia al enfoque del programa.
- Las fichas evitan afirmaciones imprecisas: Shell Sort depende de la secuencia de incrementos y Radix Sort se expresa como `O(d(n+b))`.

## Aplicacion

Despues de desplegar el backend, volver a ejecutar `database/seed-topics.sql` en Supabase. Las entradas nuevas usan `ON CONFLICT` para poder reaplicarse y actualizar su contenido sin duplicarlo.
