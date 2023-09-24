use nissy_b::b;
use nissy_c::c;

pub fn d(left: usize, right: usize) -> usize {
    b(left, right) + c(left, right)
}
