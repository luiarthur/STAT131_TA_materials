F.inv = function(u) u / (1 - u)
u = runif(1e6)
x = F.inv(u)
hist(F.inv(u))


f = function(y) 1 / (1 + y)^2
y = seq(1e-6, 10, len=1e3)
hist.color = rgb(0, 0, 1, .3)
plot(y, f(y), type='n', cex.lab=1.3)
hist(x[x < 10], add=TRUE, prob=TRUE, breaks=50,
     col=hist.color, border='transparent')
lines(y, f(y), type='l', col='black', lwd=3)
legend('topright', legend=c('f(y)', 'Draws from Y'),
       col=c('black', hist.color), lwd=c(3, 10))
