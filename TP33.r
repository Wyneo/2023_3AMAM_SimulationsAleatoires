# Méthode de Box Muller
library(plot3D)

repartitionnorm = function(x, m, sigma2) {
  repart <- c()
  for (i in 1:length(x)){
    repart[i] = integrate(function(x) dnorm(x, m, sigma2), 0, x[i])$value
  }
  return(repart)
}

ite = 10000
y = c()
for (i in 1:ite){
  y[i] = i
}

N1 = rnorm(ite, 0, 1)
N1 = cut(N1, 20)
N2 = rnorm(ite, 0, 1)
N2 = cut(N2, 20)
N = table(N1, N2)

U = runif(ite, 0, 1)
V = rexp(ite, 1)
X1 = sqrt(2 * V) * cos(2 * pi * U)
X2 = sqrt(2 * V) * sin(2 * pi * U)
X1 = cut(X1, 20)
X2 = cut(X2, 20)
X = table(X1, X2)

par(mfrow = c(2, 1))
hist3D(z = N)
hist3D(z = X)
par(mfrow = c(1, 1))