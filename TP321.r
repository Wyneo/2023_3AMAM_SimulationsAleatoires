#Simulation loi exponentielle

repartitionexp = function(x, lambda) {
  repart = c()
  for (i in 1:length(x)){
    repart[i] = integrate(function(x) dexp(x, lambda), 0, x[i])$value
    # $value permet d'avoir la valeur sans l'approximation
  }
  return(repart)
}

nbite = 1000
lambda = 1 / 10
U = runif(nbite, 0, 1)

for (i in 1:length(U)){
  U[i] = (-1 / lambda) * log(1 - U[i])
}
U = sort(U)

y = c()
for (i in 1:nbite){
  y[i] = i
}

par(mfrow = c(2, 1))
curve(repartitionexp(x, lambda), 0, 70, col = "red")
plot(U, y)
par(mfrow = c(1, 1))