# Repetir el ejemplo con los datos datasets::trees 
# de R que proporciona mediciones del diámetro, altura
# y volumen de madera en 31 cerezos negros talados.

data = datasets::trees

pairs(data)
 
idv = rep(1, nrow(data))
x = matrix(c(idv, data$Girth, data$Height), nrow = 31, ncol = 3)
y = matrix(data$Volume, nrow = 31, ncol = 1)


# Modelo de Regresión Lineal Manual

beta = solve(t(x) %*% x) %*% t(x) %*% y
beta


# Modelo de Regresión Lineal

model = lm(Volume ~ Girth + Height, data)
model



SSE = t(y) %*% y - t(beta) %*% t(x) %*% y
SSE


varest = SSE / (nrow(y) - nrow(beta))
varest

summary(model)

sum(residuals(model)^2) / df.residual(M1)


plot(data$y, fitted(model),
     xlab = "Valores Observados",
     ylab = "Valores Estimados",
     main = "Modelo de Regresión",
     pch = 19, col = "#4bb37b", cex = 1.2)


abline(0, 1, col = "#073b1f", lwd = 2, lty = 2)
grid()
