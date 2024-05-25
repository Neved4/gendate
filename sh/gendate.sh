#!/bin/sh
# This version takes forever, see: `test.c` ≈ 619 ms

set -Cefu

  utc_date() { date -u +'%Y-%m-%d'; }
   utc_sec() { date -u +'%s'; }
unix_epoch() { date -u -r0 '+%s'; }
  into_sec() { date -u -j -f "%Y-%m-%d" "$1" +"%s"; }
  iso_date() { date -u -r "$1" +'%Y-%m-%d'; }

is_leap_year() {
    year=$1

    if [ $((year % 4))   -eq 0 ] &&
	   [ $((year % 100)) -ne 0 ] ||
	   [ $((year % 400)) -eq 0 ]
	then
        return 0
    else
        return 1
    fi
}

main() {
	 current_sec=$(unix_epoch)
	current_date=$(iso_date "$current_sec")
	    end_date="2025-01-01"
	     end_sec=$(into_sec "$end_date")

	printf '%s\n' "$current_date"

	while [ "$current_sec" -lt "$end_sec" ]
	do
        year=$(date -j -f '%Y-%m-%d' "$current_date" +'%Y')

        if ! is_leap_year "$year" &&
		   [ "$(date -j -f '%Y-%m-%d' "$current_date" +'%m-%d')" = "02-29" ]
		then
            continue
        fi

		current_sec=$((current_sec + 86400))
		current_date=$(iso_date "$current_sec")

		printf '%s\n' "$current_date"
	done
}

main
