#Simulation loi de Bernoulli

repartionber = function(x, p) {
  repart = c()
  for (i in 1:length(x)){
    if (x[i] < 0) repart[i] = 0
    if (0 <= x[i] && x[i] < 1) repart[i] = (1 - p)
    if (x[i] >= 1) repart[i] = 1
  }
  return(repart)
}

nbite = 1000

y = c()
for (i in 1:nbite){
  y[i] = i
}

p = 0.6
U2 = c()
U2 = runif(nbite, 0, 1)
for (i in 1:length(U2)){
  if (0 < U2[i] && U2[i] < (1 - p)) U2[i] = 0
  if ((1 - p) <= U2[i] && U2[i] <= 1) U2[i] = 1
}
U2 = sort(U2)

par(mfrow = c(2, 1))
curve(repartionber(x, p), -0.1, 1, col = "red")
plot(U2, y)
par(mfrow = c(1, 1))