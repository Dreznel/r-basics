cat ("Hello, World!\n")

{
  x <- rnorm(50);
  y <- rnorm(x);
  plot(x, y);
  ls();
  rm(x,y);
  x <- 1:20;
  w <- 1 + sqrt(x) / 2;
  dummy <- data.frame(x = x, y = x + rnorm(x) * w);
  dummy;
}
