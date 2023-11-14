fun fibi(0, a, b) = a
  | fibi(1, a, b) = b
  | fibi(n, a, b) = fibi(n-1, b, a+b);

fun fib(n) = fibi(n, 0, 1);

fib(10) = 55;
fib(8) = 21;
fib(2) = 1;
