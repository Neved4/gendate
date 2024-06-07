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

	while {1} {
		puts [format "%04d-%02d-%02d" $year $month $day]

		incr day
		if {$day > [days_in_month $year $month]} {
			set day 1
			incr month

			if {$month > 12} {
				set month 1
				incr year
			}
		}

		if {$year == 3000 && $month == 1 && $day == 1} {
			break
		}
	}
}

main
