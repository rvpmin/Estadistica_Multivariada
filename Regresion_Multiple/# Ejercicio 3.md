# Ejercicio 3

Subir a Github los dos ejercicios previos tanto con solución en R como en Python. Comparar las funciones. Ventajas y desventajas de ambas.

---

Realizando los modelos de regresión de forma manual así como con las funciones que ya se encuentran implementadas en R y en bibliotecas de Python, se obtuvieron virtualmente los mismos resultados, por lo que no se puede notar una diferencia importante entre las funciones utilizados en estos casos particulares y con pocos datos. Sin embargo, se puede decir que es más conveniente en la gran mayoría de los situaciones utilizar las funciones ya implementadas y optimizadas a diferencia de hacerlo de forma manual.



Entrando en más detalle, en R resulta más fácil hacer modelos de regresión múltiple, puesto que es un lenguaje enfocado a la estadística y ofrece simplicidad en la sintaxis y resultados completos. Sólo es necesario llamar una función (*lm*) para ajustar un modelo, y además R tiene la función *summary* que ofrece un resumen detallado del modelo creado que incluye varios indicadores útiles para conocer al modelo y su desempeño. A diferencia de R, en Python es necesario realizar un proceso un poco más largo y manual para llegar al mismo resultado. Es decir, se deben llamar utilizar varias bibliotecas, en especial *scikit-learn* que está más enfocada al aprendizaje automático que a la estadística y en Python no se encuentra alguna función como la de *summary* en R. Es entonces que Python es más eficiente para la escalabilidad o cuando se busca integrar otras técnicas de ciencia de datos, pero menos adecuado cuando se busca una interpretación estadística detallada y de manera rápida.

