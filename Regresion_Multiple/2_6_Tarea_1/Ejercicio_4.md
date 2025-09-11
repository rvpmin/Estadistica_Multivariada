# Ejercicio 04

## a)
¿Qué supuestos del modelo de regresión lineal deben verificarse?
1. Modelo lineal en los parámetros
2. Correcta especificación del modelo
3. Independencia entre las variables regresoras y el error
4. Esperanza del error es 0
5. Homocedasticidad
6. No autocorrelación en los errores
7. Normalidad en los errores
8. $n > p + 1$, más observaciones que variables regresoras
9. Variación de la variable regresora
10. No colinealidad entre las variables regresoras

## b)
¿Cómo se interpretan los intervalos de confianza? Si construimos un intervalo de confianza del 95% para un coeficiente $\beta_j$, ¿cuál sería la lectura correcta o interpretación corretca sobre este intervalo?

> El nivel de confianza de un intervalo indica que, si se repitiera el estudio muchas veces con muestras nuevas y se construyeran intervalos de la misma forma, aproximadamente el porcentaje especificado (por ejemplo, 95%) de esos intervalos contendría el valor verdadero de $\beta_j$

## c)
Describe los métodos de selección de variables y sus ventajas y desventajas:

### → Selección hacia adelante (forward)
> En este método se inicia de un modelo sin variables. En cada paso se agrega al modelo la variable que produce la mejora más significativa en el modelo, hasta que ninguna de las variables que queden fuera del modelo aporten una mejora significativa.

    **Ventajas:** Es eficiente computacionalmente y es bueno peara encontrar modelos pequeños con las variables más importantes.

    **Desventajas:** Puede que no encuentre el mejor modelo posible dado su enfoque *greedy*.


### → Selección hacia atrás (backward)
> En este método se inicia del modelo completo, que incluye todas las variables. En cada paso se elimina la variable menos significativa, hasta que todas las variables que quedan en el modelo son significativas.

**Ventajas:** Evalua el contexto completo de todas las variables desde el inicio y no se sufre el riesgo de excluir una variable importante prematuramente.

**Desventajas:** Puede ser lento si se tienen muchas variables.

### → Selección por pasos (stepwise) y/o mejor subconjunto (best subset)
> Es una combinación de *forward* y *backward*. Se comienza agregando una variable a la vez, pero en cada paso, después de agregar una variable nueva, se verifica si alguna de las variables que ya estaban incluidas dejó de ser significativa.

**Ventajas:** Da mejores resultados que *forward* o *backward* por sí solos.

**Desventajas:** También es un método *greedy*, por lo que puede no encontrar el mejor modelo posible y quedarse en un ópitmo local.

### Explica cómo se utiizan para elegir el modelo final
Cada método porporciona un candidato de mejor modelo, y el uso de todos los métodos permiten reducir el conjunto de muchos posibles modelos a pocos candidatos prometedores.Pero la elección final corresponde al analista, basándose en el contexto del problema, evaluar estos modelos utilizando las métricas y criterios más adecuados para seleccionar el que ofrezca el mejor resultado.