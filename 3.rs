use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let n: usize = input.trim().parse().unwrap();

    let mut nums_input = String::new();
    io::stdin().read_line(&mut nums_input).unwrap();
    let nums: Vec<&str> = nums_input.split_whitespace().collect();

    for i in 0..n {
        let val: i32 = nums[i].parse().unwrap();
        if val < 10 {
            print!("- ");
        } else {
            let mut count = 0;
            let mut temp = val;
            while temp > 0 {
                if (temp % 10) % 2 == 0 { count += 1; }
                temp /= 10;
            }
            print!("{} ", count);
        }
    }
    println!();
}

