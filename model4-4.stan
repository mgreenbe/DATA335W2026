data {
  int N;
  vector[N] X;
  vector[N] Y;
}
parameters {
  real a;
  real b;
  real<lower=0> sigma;
}
model {
  for (n in 1 : N) {
    Y[n] ~ normal(a + b * X[n], sigma);
  }
}
