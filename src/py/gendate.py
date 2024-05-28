#!/usr/bin/env python3

from datetime import datetime, timedelta

def is_leap_year(year):
	return (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0)

def main():
	is_end, is_leap = False, False
	current_date = datetime(1970, 1, 1)

	print(current_date.strftime("%Y-%m-%d"))

	while True:
		current_date += timedelta(days=1)

		is_leap = (not is_leap_year(current_date.year) and
				   current_date.month == 2 and
				   current_date.day == 29)

		if is_leap:
			continue

		print(current_date.strftime("%Y-%m-%d"))

		is_end = (current_date.year == 3000 and
				  current_date.month == 1 and
				  current_date.day == 1)

		if is_end:
			break

if __name__ == "__main__":
	main()
