data {
   array[10] int<lower=0,upper=1> y;
   complex data_complex;
}
parameters {
   real<lower=0,upper=1> theta;
   //complex test_complex;
   vector[2] u;
}
model {
   theta ~ beta(1,1);  // uniform prior on interval 0,1
   y ~ bernoulli(theta);
}
generated quantities {
   complex z = to_complex();
}