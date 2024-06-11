#!/usr/bin/env tclsh

proc is_leap_year {year} {
	return [expr {($year % 4 == 0 && $year % 100 != 0) || ($year % 400 == 0)}]
}

proc days_in_month {year month} {
	switch $month {
		1 - 3 - 5 - 7 - 8 - 10 - 12 {
			return 31
		}

		4 - 6 - 9 - 11 {
			return 30
		}

		2 {
			if {[is_leap_year $year]} {
				return 29
			} else {
				return 28
			}
		}
	}
}

proc main {} {
	set year 1970
	set month 1
	set day 1

	set fmt "%04d-%02d-%02d"

	puts [format $fmt $year $month $day]

	while {1} {
		incr day
		if {$day > [days_in_month $year $month]} {
			set day 1
			incr month

			if {$month > 12} {
				set month 1
				incr year
			}
		}

		puts [format $fmt $year $month $day]

		if {$year == 3000 && $month == 1 && $day == 1} {
			break
		}
	}
}

main
