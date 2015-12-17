fn main() {
    let mut depth = 0;
    for &c in &include_bytes!("1.in")[..] {
        depth += ((c as i32) << 31 >> 31) | 1;
    }
    println!("{}", depth);
}