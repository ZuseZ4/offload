int foo() {
  return 42;
}

void bar(int *x) {
  *x = 21;
}

void baz(int *x, long n, int *y) {
    int sum = 0;
    for (int i = 0; i < n; i++)
        sum += y[i];
    *x = sum;
}

void rust_fadd(const float *a, const float *b, float *out) {
    *out = *a + *b;
}
