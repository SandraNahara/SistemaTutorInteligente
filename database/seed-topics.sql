-- seed-topics.sql
-- Tutor Inteligente AED I - Initial academic topics and materials
-- Execute this file after database/schema.sql and database/rls-policies.sql.

insert into public.knowledge_topics (unit, topic, subtopic, difficulty, description, keywords)
values
  (
    'Unidad 1',
    'Fundamentos de algoritmos',
    'Concepto de algoritmo',
    'basico',
    'Introduccion al concepto de algoritmo como secuencia finita, ordenada y precisa de pasos para resolver un problema.',
    array['algoritmo', 'entrada', 'proceso', 'salida', 'pseudocodigo']
  ),
  (
    'Unidad 1',
    'Estructuras de control',
    'Secuenciales, condicionales e iterativas',
    'basico',
    'Uso de instrucciones secuenciales, decisiones y ciclos para construir soluciones algoritmicas.',
    array['secuencia', 'condicional', 'if', 'while', 'for', 'iteracion']
  ),
  (
    'Unidad 2',
    'Complejidad algoritmica',
    'Notacion Big O',
    'intermedio',
    'Analisis basico del crecimiento temporal y espacial de un algoritmo usando notacion asintotica.',
    array['complejidad', 'big o', 'tiempo', 'espacio', 'eficiencia']
  ),
  (
    'Unidad 3',
    'Arreglos',
    'Operaciones basicas',
    'basico',
    'Estructura de datos lineal de tamano fijo para almacenar elementos accesibles mediante indices.',
    array['arreglo', 'array', 'indice', 'recorrido', 'insercion']
  ),
  (
    'Unidad 3',
    'Listas',
    'Listas enlazadas',
    'intermedio',
    'Estructura de datos lineal compuesta por nodos enlazados que permite inserciones y eliminaciones dinamicas.',
    array['lista', 'nodo', 'enlace', 'puntero', 'lista enlazada']
  ),
  (
    'Unidad 3',
    'Pilas',
    'Modelo LIFO',
    'basico',
    'Estructura lineal donde el ultimo elemento en entrar es el primero en salir.',
    array['pila', 'stack', 'lifo', 'push', 'pop', 'tope']
  ),
  (
    'Unidad 3',
    'Colas',
    'Modelo FIFO',
    'basico',
    'Estructura lineal donde el primer elemento en entrar es el primero en salir.',
    array['cola', 'queue', 'fifo', 'enqueue', 'dequeue', 'frente']
  ),
  (
    'Unidad 4',
    'Busqueda secuencial',
    'Busqueda lineal',
    'basico',
    'Algoritmo de busqueda que revisa los elementos uno por uno hasta encontrar el valor buscado o terminar el recorrido.',
    array['busqueda secuencial', 'busqueda lineal', 'recorrido', 'comparacion']
  ),
  (
    'Unidad 4',
    'Busqueda binaria',
    'Division del espacio de busqueda',
    'intermedio',
    'Algoritmo eficiente de busqueda sobre datos ordenados que divide repetidamente el intervalo de busqueda.',
    array['busqueda binaria', 'ordenado', 'mitad', 'logaritmico', 'big o']
  ),
  (
    'Unidad 5',
    'Ordenamiento burbuja',
    'Comparacion e intercambio',
    'basico',
    'Algoritmo de ordenamiento simple basado en comparar elementos adyacentes e intercambiarlos cuando corresponda.',
    array['burbuja', 'bubble sort', 'ordenamiento', 'intercambio']
  ),
  (
    'Unidad 5',
    'Ordenamiento por seleccion',
    'Seleccion del minimo',
    'basico',
    'Algoritmo que selecciona repetidamente el menor elemento restante y lo ubica en su posicion final.',
    array['seleccion', 'selection sort', 'minimo', 'ordenamiento']
  ),
  (
    'Unidad 5',
    'Ordenamiento por insercion',
    'Insercion ordenada',
    'intermedio',
    'Algoritmo que construye una porcion ordenada insertando cada nuevo elemento en la posicion que corresponde.',
    array['insercion', 'insertion sort', 'ordenamiento', 'posicion']
  ),
  (
    'Unidad 6',
    'Recursividad',
    'Caso base y caso recursivo',
    'intermedio',
    'Tecnica donde una funcion se invoca a si misma para resolver un problema dividiendolo en subproblemas mas pequenos.',
    array['recursividad', 'caso base', 'caso recursivo', 'funcion']
  ),
  (
    'Unidad 7',
    'Arboles binarios',
    'Recorridos',
    'intermedio',
    'Estructura jerarquica donde cada nodo puede tener hasta dos hijos, con recorridos inorden, preorden y postorden.',
    array['arbol binario', 'nodo', 'raiz', 'inorden', 'preorden', 'postorden']
  ),
  (
    'Unidad 7',
    'Arboles binarios de busqueda',
    'Insercion, busqueda y recorrido',
    'avanzado',
    'Arbol binario que mantiene una propiedad de orden para facilitar operaciones de busqueda, insercion y recorrido.',
    array['bst', 'arbol binario de busqueda', 'insercion', 'busqueda', 'recorrido']
  )
on conflict (unit, topic, subtopic) do nothing;

insert into public.knowledge_topics (unit, topic, subtopic, difficulty, description, keywords)
values
  (
    'Unidad 1',
    'Tipos de datos abstractos',
    'Abstraccion, interfaz y representacion',
    'basico',
    'Modelo que define un conjunto de datos y operaciones, separando la interfaz de uso de la representacion interna.',
    array['tda', 'tipo de dato abstracto', 'abstraccion', 'interfaz', 'representacion']
  ),
  (
    'Unidad 1',
    'Lenguaje C aplicado a estructuras de datos',
    'Struct, typedef y punteros',
    'intermedio',
    'Uso de struct, typedef, punteros y operador flecha para representar nodos, registros y estructuras dinamicas.',
    array['c', 'struct', 'typedef', 'puntero', 'operador flecha', 'nodo']
  ),
  (
    'Unidad 1',
    'Memoria en C',
    'Memoria estatica y dinamica',
    'intermedio',
    'Diferencias entre memoria estatica y dinamica, uso de malloc, calloc, free, sizeof y punteros void para reservar y liberar memoria.',
    array['memoria', 'malloc', 'calloc', 'free', 'sizeof', 'heap', 'memoria dinamica']
  ),
  (
    'Unidad 3',
    'Listas',
    'Listas contiguas con arreglos',
    'intermedio',
    'Implementacion de listas mediante arreglos de tamano fijo, con desplazamiento de elementos para insertar o borrar.',
    array['lista', 'arreglo', 'lista contigua', 'insertar', 'borrar', 'o n']
  ),
  (
    'Unidad 3',
    'Listas',
    'Nodo cabecera',
    'intermedio',
    'Uso de un nodo cabecera para simplificar operaciones y evitar casos especiales al modificar el primer elemento.',
    array['lista', 'nodo cabecera', 'header node', 'primer nodo', 'puntero']
  ),
  (
    'Unidad 3',
    'Listas',
    'Listas doblemente enlazadas y circulares',
    'intermedio',
    'Variantes de listas enlazadas donde cada nodo puede enlazar al anterior y al siguiente, o donde el ultimo nodo apunta nuevamente al primero.',
    array['lista doble', 'doblemente enlazada', 'lista circular', 'enlace anterior', 'enlace siguiente']
  ),
  (
    'Unidad 3',
    'Pilas',
    'Implementacion con arreglos y listas enlazadas',
    'intermedio',
    'Implementacion estatica o dinamica de una pila y manejo de operaciones push, pop, cima, pila vacia, overflow y underflow.',
    array['pila', 'stack', 'push', 'pop', 'cima', 'overflow', 'underflow', 'lifo']
  ),
  (
    'Unidad 3',
    'Colas con prioridad',
    'Turnero por prioridad',
    'intermedio',
    'Estructura que atiende elementos segun una prioridad definida, util para casos como turneros de emergencia, adultos mayores y consulta normal.',
    array['cola prioridad', 'priority queue', 'turnero', 'prioridad', 'atender', 'fifo']
  ),
  (
    'Unidad 7',
    'Arboles AVL',
    'Rotaciones y balanceo',
    'avanzado',
    'Arbol binario de busqueda auto-balanceado que mantiene la diferencia de alturas entre subarboles en -1, 0 o 1 mediante rotaciones.',
    array['avl', 'arbol avl', 'rotacion', 'balanceo', 'factor balance', 'altura']
  ),
  (
    'Unidad 7',
    'Arboles splay',
    'Autoajuste por acceso',
    'avanzado',
    'Arbol binario de busqueda autoajustable que mueve el nodo accedido hacia la raiz mediante operaciones zig, zig-zig y zig-zag.',
    array['splay', 'arbol splay', 'zig', 'zig zig', 'zig zag', 'autoajustable']
  ),
  (
    'Unidad 3',
    'Colas',
    'Colas circulares',
    'intermedio',
    'Implementacion de colas con arreglos circulares usando indices frente y final, y aritmetica modular para reutilizar posiciones.',
    array['cola', 'cola circular', 'frente', 'final', 'modulo', 'fifo', 'enqueue', 'dequeue']
  ),
  (
    'Unidad 3',
    'Colas binomiales',
    'Colas de prioridad con arboles binomiales',
    'avanzado',
    'Cola de prioridad formada por arboles binomiales que permite insertar, extraer minimo o maximo y unir colas en tiempo logaritmico.',
    array['cola binomial', 'heap binomial', 'arbol binomial', 'prioridad', 'log n', 'unir']
  ),
  (
    'Unidad 5',
    'HeapSort',
    'Ordenamiento con monticulos',
    'avanzado',
    'Algoritmo de ordenamiento que construye un heap y extrae repetidamente el elemento principal para ordenar un arreglo.',
    array['heapsort', 'heap sort', 'monticulo', 'heap', 'ordenamiento', 'max heap', 'min heap']
  ),
  (
    'Unidad 7',
    'Monticulos',
    'Heap y operaciones basicas',
    'avanzado',
    'Estructura de arbol completo que cumple una propiedad de orden y se usa para implementar colas de prioridad.',
    array['heap', 'monticulo', 'insertar', 'eliminar minimo', 'eliminar maximo', 'obtener principal', 'cola prioridad']
  ),
  (
    'Unidad 7',
    'Arboles binarios',
    'Altura y recorridos de expresiones',
    'intermedio',
    'Calculo de altura de nodos y arboles, y recorridos preorden, inorden y postorden aplicados a arboles de expresion.',
    array['altura', 'arbol', 'recorrido', 'expresion', 'inorden', 'preorden', 'postorden']
  ),
  (
    'Unidad 2',
    'Induccion matematica',
    'Pruebas sobre sucesiones',
    'intermedio',
    'Tecnica de demostracion con caso base, hipotesis inductiva y paso inductivo para probar afirmaciones sobre numeros naturales.',
    array['induccion', 'caso base', 'hipotesis inductiva', 'paso inductivo', 'sucesion', 'n natural']
  ),
  (
    'Unidad 8',
    'Practica tipo examen',
    'Analisis de codigo y estructuras de datos',
    'avanzado',
    'Ejercicios integradores de finales y ordinarios: analisis de codigo C, Big O, recorridos de arboles, AVL, heaps, listas, pilas y colas.',
    array['examen', 'final', 'ordinario', 'ejercicio', 'codigo c', 'big o', 'avl', 'heap']
  )
on conflict (unit, topic, subtopic) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen: concepto de algoritmo',
  'Un algoritmo es una secuencia finita y ordenada de pasos que permite resolver un problema. Normalmente se analiza identificando entrada, proceso y salida. En Algoritmos y Estructuras de Datos I se recomienda expresar soluciones en lenguaje natural, pseudocodigo o diagramas simples antes de programar.',
  'Material base del prototipo Tutor Inteligente AED I',
  'teoria',
  'basico'
from public.knowledge_topics kt
where kt.topic = 'Fundamentos de algoritmos'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen del PDF: tipos de datos abstractos',
  'Un TDA describe que datos se manipulan y que operaciones se pueden realizar, ocultando los detalles de implementacion. El PDF destaca que un mismo TDA puede implementarse con distintas estructuras, siempre que respete la misma interfaz.',
  'TDA Listas_merged.pdf',
  'teoria',
  'basico'
from public.knowledge_topics kt
where kt.topic = 'Tipos de datos abstractos'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Guia del PDF: struct, typedef y punteros',
  'Para implementar estructuras de datos en C se usan struct para agrupar campos, typedef para crear alias de tipos y punteros para enlazar nodos o pasar datos por referencia. El operador -> permite acceder a un campo desde un puntero a estructura.',
  'TDA Listas_merged.pdf',
  'guia',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Lenguaje C aplicado a estructuras de datos'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen del PDF: memoria dinamica',
  'La memoria estatica se define antes de ejecutar el programa y mantiene tamano fijo. La memoria dinamica permite reservar espacio en tiempo de ejecucion con malloc o calloc y liberarlo con free cuando deja de ser necesario.',
  'TDA Listas_merged.pdf',
  'teoria',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Memoria en C'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Comparacion del PDF: listas con arreglos y listas enlazadas',
  'En listas contiguas con arreglos, acceder al k-esimo elemento es O(1), pero insertar al inicio puede requerir mover N elementos y cuesta O(N). En listas enlazadas, insertar despues de una posicion conocida puede ser O(1), pero buscar posiciones o elementos suele requerir recorrido O(N).',
  'TDA Listas_merged.pdf',
  'guia',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Listas' and kt.subtopic = 'Listas contiguas con arreglos'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Guia del PDF: nodo cabecera',
  'El nodo cabecera simplifica la implementacion porque la lista siempre apunta a un nodo fijo. Asi se reducen casos especiales cuando se inserta o borra el primer elemento y se evita trabajar directamente con una lista nula.',
  'TDA Listas_merged.pdf',
  'guia',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Listas' and kt.subtopic = 'Nodo cabecera'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen del PDF: variantes de listas enlazadas',
  'Una lista simple enlaza cada nodo con el siguiente. Una lista doblemente enlazada agrega enlace al nodo anterior. Una lista circular conecta el ultimo nodo con el primero, lo que permite recorridos sin un final nulo explicito.',
  'TDA Listas_merged.pdf',
  'teoria',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Listas' and kt.subtopic = 'Listas doblemente enlazadas y circulares'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen del PDF: pilas con arreglos y listas',
  'Una pila aplica LIFO: el ultimo elemento que entra es el primero en salir. Puede implementarse con arreglo usando una variable cima, o dinamicamente con nodos enlazados. En una pila vacia, pop produce underflow; en una pila llena de tamano fijo, push produce overflow.',
  'TDA Listas_merged.pdf',
  'teoria',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Pilas' and kt.subtopic = 'Implementacion con arreglos y listas enlazadas'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Ejercicio inspirado en el PDF: turnero por prioridad',
  'Una clinica atiende pacientes con prioridad 1 para emergencia, 2 para adultos mayores y 3 para consulta normal. Diseñar las operaciones para registrar paciente y atender el siguiente respetando la prioridad. Indicar que ocurre si dos pacientes tienen la misma prioridad.',
  'TDA Listas_merged.pdf',
  'ejercicio',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Colas con prioridad'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen: arbol AVL',
  'Un arbol AVL es un arbol binario de busqueda que conserva balance de altura. Luego de insertar o borrar, se calcula el factor de balance y, si queda fuera de -1, 0 o 1, se aplican rotaciones simples o dobles para restaurar la propiedad.',
  'Ampliacion sugerida: no aparece en TDA Listas_merged.pdf',
  'teoria',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Arboles AVL'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen: arbol splay',
  'Un arbol splay es un arbol binario de busqueda autoajustable. Cada busqueda, insercion o acceso mueve el nodo utilizado hacia la raiz mediante zig, zig-zig o zig-zag. Esto favorece accesos repetidos a elementos recientes.',
  'Ampliacion sugerida: no aparece en TDA Listas_merged.pdf',
  'teoria',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Arboles splay'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Ejemplo: estructura condicional',
  'Para decidir si un numero es par, se puede evaluar el resto de dividirlo por 2. Si el resto es 0, el numero es par; en caso contrario, es impar. Este ejemplo usa entrada, decision y salida.',
  'Material base del prototipo Tutor Inteligente AED I',
  'ejemplo',
  'basico'
from public.knowledge_topics kt
where kt.topic = 'Estructuras de control'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen de apuntes: TDA cola',
  'Una cola sigue FIFO: el primer elemento que entra es el primero en salir. Sus operaciones basicas son crear, enqueue para insertar al final, dequeue para quitar del frente, front para consultar el primero e isEmpty para verificar si esta vacia. Puede implementarse con arreglos lineales, arreglos circulares o listas ligadas.',
  'teorias C.pdf; AYUDITA C.pdf; Resumen Algoritmos I.pdf',
  'teoria',
  'basico'
from public.knowledge_topics kt
where kt.topic = 'Colas' and kt.subtopic = 'Modelo FIFO'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Guia de apuntes: colas circulares',
  'En una cola circular implementada con arreglo se usan indices frente y final. Al avanzar se aplica modulo MAXTAMQ para volver al inicio del arreglo cuando se llega al final fisico. Esto evita desplazar elementos y reutiliza espacios liberados por dequeue.',
  'teorias C.pdf; Resumen Algoritmos I.pdf',
  'guia',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Colas' and kt.subtopic = 'Colas circulares'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen de apuntes: monticulos',
  'Un monticulo o heap es un arbol completo que cumple una propiedad de orden: en un max-heap cada padre es mayor o igual que sus hijos, y en un min-heap cada padre es menor o igual. Es ideal para colas de prioridad porque permite obtener el principal rapidamente y mantener inserciones/extracciones en O(log n).',
  'AYUDITA C.pdf; Resumen Algoritmos I.pdf; Ordinario-Algoritmos-2021.pdf',
  'teoria',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Monticulos'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Guia de apuntes: heapSort',
  'HeapSort construye un heap con los elementos del arreglo y luego intercambia repetidamente la raiz con el ultimo elemento no ordenado, reduce el tamano logico del heap y reacomoda la raiz. Su complejidad temporal es O(n log n) y puede ordenar in-place.',
  'AYUDITA C.pdf; Resumen Algoritmos I.pdf; Ordinario-Algoritmos-2021.pdf',
  'guia',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'HeapSort'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen de apuntes: colas binomiales',
  'Una cola binomial es una cola de prioridad compuesta por arboles binomiales. Permite insertar, sacar minimo o maximo y unir dos colas en O(log n) en el peor caso. Se estudia como una extension de heaps para manejar prioridades y union eficiente.',
  'AYUDITA C.pdf; Resumen Algoritmos I.pdf',
  'teoria',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Colas binomiales'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Guia de apuntes: AVL y rotaciones',
  'Un AVL es un arbol binario de busqueda balanceado por altura. El factor de equilibrio puede expresarse como altura derecha menos altura izquierda. Si al insertar o borrar se rompe el balance, se aplican rotaciones simples o dobles segun el caso.',
  'AYUDITA C.pdf; Resumen Algoritmos I.pdf; Ultimo final C.pdf',
  'guia',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Arboles AVL'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Guia de apuntes: arbol splay',
  'Un arbol splay es un ABB autoajustable. Despues de buscar, insertar o eliminar, el nodo relevante se mueve hacia la raiz mediante pasos zig, zig-zig o zig-zag. La idea es mejorar accesos futuros a elementos usados recientemente.',
  'AYUDITA C.pdf; Resumen Algoritmos I.pdf',
  'guia',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Arboles splay'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Ejercicio tipo examen: Big O con bucles anidados',
  'Dado un fragmento con un bucle sobre arrayA, otro sobre arrayB y un tercer bucle con limite constante, determinar la complejidad. La respuesta esperada es O(A*B), porque el tercer bucle no depende del tamano de entrada y se considera constante.',
  'AYUDITA C.pdf; Resumen Algoritmos I.pdf; Final.pdf; Ordinario-Algoritmos-2021.pdf',
  'ejercicio',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Complejidad algoritmica'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Ejercicio tipo examen: recorridos de arbol de expresion',
  'Dado un arbol de expresion con operadores internos y operandos como hojas, pedir recorridos inorden, postorden y preorden. El tutor debe guiar recordando que inorden visita izquierda-raiz-derecha, postorden izquierda-derecha-raiz y preorden raiz-izquierda-derecha.',
  'AYUDITA C.pdf; Resumen Algoritmos I.pdf; Final.pdf; Ordinario-Algoritmos-2021.pdf',
  'ejercicio',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Arboles binarios' and kt.subtopic = 'Altura y recorridos de expresiones'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Ejercicio tipo examen: insercion en AVL',
  'Insertar valores como 5, 7, 6, 12 y 8, o 4, 9, 6 y 15, dibujando el arbol paso a paso e indicando si corresponde rotacion simple o doble. El tutor debe pedir primero el factor de balance antes de mostrar la rotacion.',
  'AYUDITA C.pdf; Resumen Algoritmos I.pdf; Ultimo final C.pdf',
  'ejercicio',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Arboles AVL'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Ejercicio tipo examen: pila con arreglo en C',
  'Implementar un TDA pila con arreglo usando una estructura con arreglo de void*, capacidad y sp como cima. Crear debe reservar memoria, push debe validar overflow, pop debe validar underflow y devolver el valor por parametro usando void**.',
  'Ultimo final C.pdf',
  'ejercicio',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Pilas' and kt.subtopic = 'Implementacion con arreglos y listas enlazadas'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Ejercicio tipo examen: lista con arreglo en C',
  'Completar una lista con arreglo que guarda void** dato, tamActual y tamMax. Las operaciones tipicas son crear, destruir, agregar al final e imprimir. El tutor debe reforzar validacion de punteros, reserva con malloc y control de capacidad.',
  'Ultimo final C.pdf',
  'ejercicio',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Listas' and kt.subtopic = 'Listas contiguas con arreglos'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Ejercicio tipo examen: detectar errores en lista ligada',
  'Analizar codigo de lista ligada con nodo cabecera y operaciones crear, agregarInicio y primero. Errores frecuentes: no verificar malloc, asignar incorrectamente el puntero de salida, perder enlaces al insertar y no liberar memoria dinamica.',
  'AYUDITA C.pdf; Resumen Algoritmos I.pdf',
  'ejercicio',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Listas' and kt.subtopic = 'Nodo cabecera'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Ejercicio tipo examen: induccion',
  'Probar identidades como 3+5+7+...+(2n+1)=n(n+2) o 3+7+11+...+(4n-1)=n(2n+1). La estructura esperada es caso base, hipotesis para n=k y demostracion para n=k+1.',
  'Ultimo final C.pdf',
  'ejercicio',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Induccion matematica'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Banco de practica: finales y ordinarios',
  'Los examenes revisados combinan analisis de macros en C, complejidad Big O, recorridos de arboles, underflow, heaps, AVL, induccion, pilas con arreglos y listas con arreglos. Para practicar, el tutor debe generar ejercicios similares y corregir paso a paso.',
  'AYUDITA C.pdf; teorias C.pdf; Ultimo final C.pdf; Ordinario-Algoritmos-2021.pdf; Final.pdf; Resumen Algoritmos I.pdf',
  'guia',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Practica tipo examen'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Examen final anterior reconstruido con respuestas',
  'Modelo representativo basado en finales y ordinarios cargados. 1) Analisis de macro en C: explicar por que un macro que declara int var dentro de foo puede producir conflicto/redefinicion de variable; respuesta: el macro se expande textual dentro de la funcion, por eso queda una declaracion int var en el mismo bloque donde ya existe otra. 2) Big O: tres bucles anidados sobre arrayA, arrayB y una constante 100000; respuesta: O(A*B), porque el tercer bucle es constante. 3) Recorridos de arbol de expresion: pedir inorden, preorden y postorden; respuesta esperada: aplicar izquierda-raiz-derecha, raiz-izquierda-derecha e izquierda-derecha-raiz. 4) Underflow: respuesta: intentar extraer de una pila o cola vacia. 5) Heap y heapSort: definir heap como arbol completo con propiedad de orden; heapSort construye heap y extrae/intercambia la raiz con el ultimo elemento no ordenado hasta ordenar; complejidad O(n log n). 6) AVL: insertar una secuencia como 5,7,6,12,8 o 4,9,6,15 y pedir rotaciones; respuesta: calcular factor de balance en cada paso y aplicar rotacion simple o doble segun caso LL, RR, LR o RL. 7) Implementacion en C: completar pila con arreglo usando void**, cap y sp; create reserva memoria, push valida overflow, pop valida underflow y devuelve valor por void**. 8) Induccion: probar formulas de sucesiones con caso base, hipotesis inductiva y paso k+1.',
  'AYUDITA C.pdf; Ultimo final C.pdf; Ordinario-Algoritmos-2021.pdf; Final.pdf; Resumen Algoritmos I.pdf',
  'guia',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Practica tipo examen'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen: Big O',
  'La notacion Big O describe como crece el costo de un algoritmo a medida que aumenta el tamano de la entrada. Por ejemplo, un recorrido simple de un arreglo suele tener complejidad temporal O(n), mientras que una busqueda binaria sobre datos ordenados tiene complejidad O(log n).',
  'Material base del prototipo Tutor Inteligente AED I',
  'teoria',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Complejidad algoritmica'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Ejercicio inicial: pilas',
  'Dada una pila inicialmente vacia, realizar las operaciones push(4), push(7), pop(), push(2). Indicar cual es el elemento en el tope al finalizar y explicar el criterio LIFO aplicado.',
  'Material base del prototipo Tutor Inteligente AED I',
  'ejercicio',
  'basico'
from public.knowledge_topics kt
where kt.topic = 'Pilas'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Ejercicio inicial: colas',
  'Dada una cola vacia, realizar enqueue(A), enqueue(B), dequeue(), enqueue(C). Indicar que elemento queda al frente y explicar el criterio FIFO aplicado.',
  'Material base del prototipo Tutor Inteligente AED I',
  'ejercicio',
  'basico'
from public.knowledge_topics kt
where kt.topic = 'Colas'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Ejemplo: busqueda binaria',
  'Para buscar el valor 18 en el arreglo ordenado [3, 8, 12, 18, 25, 31], se compara primero con el elemento central. Segun si el valor buscado es menor o mayor, se descarta una mitad del arreglo y se continua con la otra.',
  'Material base del prototipo Tutor Inteligente AED I',
  'ejemplo',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Busqueda binaria'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen: recursividad',
  'Una solucion recursiva debe definir al menos un caso base, que detiene las llamadas, y un caso recursivo, que reduce el problema hacia una version mas simple. Sin caso base correcto, la recursion puede no terminar.',
  'Material base del prototipo Tutor Inteligente AED I',
  'teoria',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Recursividad'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Guia breve: recorridos de arboles',
  'En preorden se visita raiz, subarbol izquierdo y subarbol derecho. En inorden se visita subarbol izquierdo, raiz y subarbol derecho. En postorden se visita subarbol izquierdo, subarbol derecho y raiz.',
  'Material base del prototipo Tutor Inteligente AED I',
  'guia',
  'intermedio'
from public.knowledge_topics kt
where kt.topic = 'Arboles binarios'
limit 1
on conflict (topic_id, title) do nothing;

insert into public.academic_materials (topic_id, title, content, source, type, difficulty)
select
  kt.id,
  'Resumen: arbol binario de busqueda',
  'En un arbol binario de busqueda, los valores menores que un nodo se ubican en su subarbol izquierdo y los mayores en su subarbol derecho. Esta propiedad permite realizar busquedas guiadas por comparaciones.',
  'Material base del prototipo Tutor Inteligente AED I',
  'teoria',
  'avanzado'
from public.knowledge_topics kt
where kt.topic = 'Arboles binarios de busqueda'
limit 1
on conflict (topic_id, title) do nothing;
