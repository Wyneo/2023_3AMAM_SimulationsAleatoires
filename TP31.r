#Approximation de pi avec la methode de Buffon
l = 10
a = 5
d = c()
som = 0
ite = 1000000 #nombre d'iterations
teta = runif(ite, -pi / 2, pi / 2)
X = runif(ite, 0, l)

for (i in 1:ite){
  if ((0 <= X[i] && X[i] <= (a/2)*cos(teta[i])) ||
        (l-(a/2)*cos(teta[i]) <= X[i] && X[i] <= l)) {
    d[i] = 1
  }else{
    d[i] = 0
  }
  som = som + d[i]
}

esperance = som / ite
Pi = (2 * a) / (esperance * l)
print(Pi)