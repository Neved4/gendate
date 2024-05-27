use chrono::{Duration, Utc};
use chrono::prelude::*;

fn main() {
	let start_date = Utc.with_ymd_and_hms(1970, 1, 1, 0, 0, 0).unwrap();
	let end_date = Utc.with_ymd_and_hms(3000, 1, 1, 0, 0, 0).unwrap();
	let mut current_date = start_date;

	while current_date <= end_date {
		println!("{}", current_date.format("%Y-%m-%d"));
		current_date += Duration::days(1);
	}
}
