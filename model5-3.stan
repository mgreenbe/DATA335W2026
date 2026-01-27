data {
  int N;
  vector<lower=0, upper=1>[N] Sex;
  vector<lower=0>[N] Income;
  vector<lower=0, upper=1>[N] Y;
}
parameters {
  vector[3] b;
  real<lower=0> sigma;
}
model {
  Y[1 : N] ~ normal(b[1] + b[2] * Sex[1 : N] + b[3] * Income[1 : N], sigma);
}
