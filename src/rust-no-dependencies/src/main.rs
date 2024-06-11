use std::io::{self, Write};

fn is_leap_year(year: u16) -> bool {
	year % 4 == 0 && year % 100 != 0 || year % 400 == 0
}

fn days_in_month(year: u16, month: u8) -> u8 {
	match month {
		1|3|5|7|8|10|12 => 31,
		4|6|9|11 => 30,
		2 => if is_leap_year(year) { 29 } else { 28	},
		_ => unreachable!()
	}
}

fn main() {
	let stdout: io::StdoutLock<'_> = io::stdout().lock();
	let mut handle: io::BufWriter<_> = io::BufWriter::new(stdout);

	let mut year: u16 = 1970;
	let mut month: u8 = 1;
	let mut day: u8 = 1;

	let line: String = format!("{}-{:02}-{:02}", year, month, day);
	writeln!(handle, "{}", line).expect("Failed to writeln");

	loop {
		day += 1;
		if day > days_in_month(year, month) {
			day = 1;
			month += 1;

			if month > 12 {
				month = 1;
				year += 1;
			}
		}

		let line: String = format!("{}-{:02}-{:02}", year, month, day);
		writeln!(handle, "{}", line).expect("Failed to writeln");

		if year == 3000 && month == 1 && day == 1 {
			break;
		}
	}

	handle.flush().expect("Unable to flush stdout");
}
