#real likelihood
lambda <- 5
#sample size
n <- 15
#generate some data
set.seed(123)
y <- rpois(n,lambda)

#prior
alpha <- 4
beta <- 2

#posterior parameters
alphastar <- alpha + sum(y)
betastar <- beta + length(y)

# plots
plot(seq(1:20), dpois(seq(1:20), lambda), type="l", lwd=2, col="black", ylab="density", xlab=expression(lambda),  ylim=c(0,0.7), xlim=c(0,20))
curve(dgamma(x, alpha, beta), col="red", lty=1,lwd=2,  add =T)
curve(dgamma(x, alphastar, betastar), col="blue", lwd=2, add= T)  
legend(12, 0.7, c("Prior", "Likelihood", "Posterior"), c("red", "black", "blue"), lty=c(1,1,1),lwd=c(2,2,2))
