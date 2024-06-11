use chrono::{Duration, NaiveDate};
use std::io::{self, Write};

fn main() {
	let stdout: io::StdoutLock<'_> = io::stdout().lock();
	let mut handle: io::BufWriter<_> = io::BufWriter::new(stdout);

	let start_date: NaiveDate = NaiveDate::from_ymd_opt(1970, 1, 1).expect("Invalid start date");
	let end_date: NaiveDate = NaiveDate::from_ymd_opt(3000, 1, 1).expect("Invalid end date");

	let mut current_date: NaiveDate = start_date;

	while current_date <= end_date {
		writeln!(handle, "{}", current_date.format("%Y-%m-%d")).expect("Failed to writeln");
		current_date += Duration::days(1);
	}

	handle.flush().expect("Unable to flush stdout");
}
