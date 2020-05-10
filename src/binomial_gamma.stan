data {
  int <lower=0> N;
  int y[N];
  real <lower=0> a;
  real <lower=0> b;
}

parameters {
  real <lower=0, upper=1> p;
}

model {
  target+=binomial_lpmf(y | N, p);
  target+=gamma_lpdf(p|a,b);
}

