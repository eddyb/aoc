fn main() {
    let mut depth = 0;
    for (i, &c) in include_bytes!("1.in").iter().enumerate() {
        depth += ((c as i32) << 31 >> 31) | 1;
        if cfg!(part2) && depth == -1 {
            println!("{}", i + 1);
            return;
        }
    }
    println!("{}", depth);
}