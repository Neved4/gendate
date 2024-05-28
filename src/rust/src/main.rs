use chrono::{Duration, Utc};
use chrono::prelude::*;

fn main() {
	let start_date = match Utc::with_ymd_and_hms(1970, 1, 1, 0, 0, 0) {
		Ok(date) => Ok(date),
		Err(e) => Err(("Failed to create start date", e)),
	};

	let end_date = match Utc::with_ymd_and_hms(3000, 1, 1, 0, 0, 0) {
		Ok(date) => Ok(date),
		Err(e) => Err(("Failed to create end date", e)),
	};

	let mut current_date = start_date;

	while current_date <= end_date {
		println!("{}", current_date.format("%Y-%m-%d"));
		current_date += Duration::days(1);
	}
}
