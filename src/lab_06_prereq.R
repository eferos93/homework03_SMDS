setwd("~/Units/statisticalmethodsfordatascience/homework03_SMDS/src")
library(rstan)
set.seed(123)
#input values
theta_sample <- 2 #true mean 
sigma2 <- 2 #likelihood variance 
n <- 10 #sample size 
mu <- 7 #prior mean 
tau2 <- 2 #prior variance
#generate some data
y <- rnorm(n,theta_sample, sqrt(sigma2))
#launch Stan model
data<- list(N=n, y=y, sigma =sqrt(sigma2), mu = mu, tau = sqrt(tau2))
fit <- stan(file="normal.stan", data = data, chains = 4, iter=2000) 

