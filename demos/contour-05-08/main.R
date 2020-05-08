f = function(x, y, B) {
  support = x^2 + y^2 <= B
  (24 / (pi * B^3) * (x*y) ^ 2) * support
}

# Creat grid points to evaluate (x, y)
par(mfrow=c(1,2))
for (B in 1:2) {
  x = seq(-sqrt(B), sqrt(B), length= 300)
  y = seq(-sqrt(B), sqrt(B), length= 300)

  # Evaluate f at cartesian product of generated grid points (x, y)
  z = outer(x, y, function(x, y) f(x, y, B))

  # Draw contour plots
  contour(x, y, z, nlevels=30,
          ylim=c(-sqrt(2), sqrt(2)),
          xlim=c(-sqrt(2), sqrt(2)),
          main=paste0('Contour plot of f(x, y), for B=', B),
          xlab='x', ylab='y', cex.main=1.5, cex.lab=1.5, cex.axis=1.5, add=F)
}
par(mfrow=c(1,1))
