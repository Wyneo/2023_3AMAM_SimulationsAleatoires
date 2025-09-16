#Simulation de Pi par la methode de Monte Carlo

ite = 1000000
x = runif(ite, 0, 1)
y = runif(ite, 0, 1)
D = c()

for (i in 1:ite) {
  if ((x[i]^2 + y[i]^2) <= 1) {
    D[i] = 1
  } else {
    D[i] = 0
  }
}

P = 4 * (sum(D) / ite)
print(P)