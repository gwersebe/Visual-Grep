use regex::Regex;
use std::env;
use std::fs;
use std::io::{self, BufRead};
use std::path::PathBuf;
use walkdir::WalkDir;
use rayon::prelude::*;
use std::sync::atomic::{AtomicUsize, Ordering};
use std::sync::Arc;

fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() != 3 {
        eprintln!("Usage: {} <directory> <search_term>", args[0]);
        return;
    }
    let dir_path = &args[1];
    let search_term = &args[2];
    
    if let Err(e) = search_directory(dir_path, search_term) {
        eprintln!("Error: {}", e);
    }
}

fn search_directory(dir_path: &str, search_term: &str) -> io::Result<()> {
    let path = PathBuf::from(dir_path);
    
    if !path.is_dir() {
        eprintln!("{} is not a directory", dir_path);
        return Ok(());
    }

    let entries: Vec<PathBuf> = WalkDir::new(&path)
        .into_iter()
        .filter_map(|e| e.ok())
        .filter(|e| e.path().is_file())
        .map(|e| e.path().to_path_buf())
        .collect();

    let total_files = entries.len();
    let processed_files = Arc::new(AtomicUsize::new(0));
    let search_term = search_term.to_string();

    entries.into_par_iter()
        .for_each(|file_path| {
            match grep_file(&file_path, &search_term) {
                Ok(matches) => {
                    for result in matches {
                        println!("{}", result);
                    }
                }
                Err(e) => eprintln!("Error reading file {}: {}", file_path.display(), e),
            }

            let processed = processed_files.fetch_add(1, Ordering::SeqCst) + 1;
            println!("Processed {}/{} files", processed, total_files);
        });

    Ok(())
}

fn grep_file(file_path: &PathBuf, search_term: &str) -> io::Result<Vec<String>> {
    let file = fs::File::open(file_path)?;
    let reader = io::BufReader::new(file);
    let re = Regex::new(&format!("(?i){}", search_term)).unwrap();
    
    let matches: Vec<String> = reader
        .lines()
        .enumerate()
        .filter_map(|(line_num, line)| {
            match line {
                Ok(line) => {
                    if re.is_match(&line) {
                        Some(format!("{}:{}: {}", file_path.display(), line_num + 1, line))
                    } else {
                        None
                    }
                },
                Err(_) => None,
            }
        })
        .collect();

    Ok(matches)
}