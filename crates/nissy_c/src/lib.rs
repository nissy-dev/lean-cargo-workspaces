use nissy_a::a;
use nissy_b::b;

pub fn c(left: usize, right: usize) -> usize {
    a(left, b(left, right))
}
