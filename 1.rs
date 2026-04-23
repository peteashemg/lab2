use std::io::{self, Write};
fn main() {
    let mut s = String::new();
    let mut t = String::new();

    print!("S: ");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut s).expect("Error of rd");

    print!("T: ");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut t).expect("Error of rd");

    let s = s.trim();
    let t = t.trim();

    if s.len() == t.len() && format!("{}{}", s, s).contains(t) {
        println!("Результат Да");
    }
    else {
        println!("Результат Нет");
    }
}
