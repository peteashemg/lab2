use std::collections::HashMap;
use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let n: i32 = input.trim().parse().unwrap();

    let mut routes = HashMap::new();
    let mut all_starts = Vec::new();
    let mut all_ends = Vec::new();

    for _ in 0..n {
        let mut line = String::new();
        io::stdin().read_line(&mut line).unwrap();
        let words: Vec<String> = line.split_whitespace().map(|s| s.to_string()).collect();
        
        routes.insert(words[0].clone(), words[1].clone());
        all_starts.push(words[0].clone());
        all_ends.push(words[1].clone());
    }
    let mut current = String::new();
    for city in all_starts {
        if !all_ends.contains(&city) {
            current = city;
            break;
        }
    }

    while routes.contains_key(&current) {
        current = routes.get(&current).unwrap().clone();
    }

    println!("{}", current);
}

