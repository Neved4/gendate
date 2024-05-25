#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int is_leap_year(int year) {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

int main() {
	int is_end, is_leap;
	char iso_date[11];
	time_t current_sec = 0;
	struct tm *current_date = gmtime(&current_sec);

	strftime(iso_date, sizeof(iso_date), "%Y-%m-%d", current_date);
	printf("%s\n", iso_date);

	while (1) {
		current_sec += 86400;
		current_date = gmtime(&current_sec);

		is_leap = (
			!is_leap_year(current_date->tm_year + 1900) &&
			current_date->tm_mon == 1 &&
			current_date->tm_mday == 29
		);

		if (is_leap) {
			continue;
		}

		strftime(iso_date, sizeof(iso_date), "%Y-%m-%d", current_date);
		printf("%s\n", iso_date);

		is_end = (
			(current_date->tm_year == 1100) &&
			(current_date->tm_mon  == 0)    &&
			(current_date->tm_mday == 1)
		);

		if (is_end) {
			break;
		}
	}

	return 0;
}
