# Un analista hace un estudio químico y espera
# que el rendimiento de cierta sustancia se vea
# afectado por dos factores. Se realizan 17 
# experimentos cuyos datos se registran en el 
# cuadro siguiente. Por experimentos similares, 
# se sabe que los factores x1 y x2 no están 
# relacionados; por ello, el analista decide 
# utilizar un modelo de regresión lineal múltiple. 
# Calcule el modelo de regresión y grafíquelo sobre 
# las observaciones.


data = read.csv('est_quimico.csv')

pairs(data[-1])

idv = rep(1, nrow(data))
x = matrix(c(idv, data$x1, data$x2), nrow = 17, ncol = 3)
y = matrix(data$y, nrow = 17, ncol = 1)


# Modelo de Regresión Lineal Manual

beta = solve(t(x) %*% x) %*% t(x) %*% y
beta


# Modelo de Regresión Lineal
model = lm(y ~ x1 + x2, data)
model





SSE = t(y) %*% y - t(beta) %*% t(x) %*% y
SSE




varest = SSE / (nrow(y) - nrow(beta))
varest

summary(model)

sum(residuals(model)^2) / df.residual(model)


plot(data$y, fitted(model),
     xlab = "Valores Observados",
     ylab = "Valores Estimados",
     main = "Modelo de Regresión",
     pch = 19, col = "#4bb37b", cex = 1.2)


abline(0, 1, col = "#073b1f", lwd = 2, lty = 2)
grid()
