#Methode du rejet

ite = 10000
abs = c()
ord = c()

f1 = function(x){
  f = c()
  for (i in 1:length(x)){
    if (-1 <= x[i] && x[i] <= 1) {
      f[i] = (2 / pi) * sqrt(1 - x[i]^2)
    } else {
      f[i] = 0
    }
  }
  return(f)
}

for (i in 1:ite){
  u = runif(1, 0, 1)
  g = runif(1, -1, 1)
  if (u <= (2 / pi) * sqrt(1 - g^2)) {
    abs[i] = g
    ord[i] = u
  }else {
    abs[i] = 0
    ord[i] = 0
  }
}

plot(abs, ord, cex = 0.5)
curve(f1(x), -1, 1, add = TRUE)
