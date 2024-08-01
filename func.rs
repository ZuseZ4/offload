#[no_mangle]
pub fn foo() -> i32 {
  42
}

#[no_mangle]
pub fn bar(x: &mut i32) {
	*x = 21;
}

#[no_mangle]
pub fn baz(x: &mut i32, y: &[i32]) {
    *x = y.iter().sum();
}

#[no_mangle]
pub fn rust_fadd(a: &f32, b: &f32, out: &mut f32) {
    *out = a + b;
}
