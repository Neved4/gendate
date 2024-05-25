package main

import (
	"fmt"
	"time"
)

func isLeapYear(year int) bool {
	return (year%4 == 0 && year%100 != 0) || (year%400 == 0)
}

func main() {
	isEnd, isLeap := false, false
	currentDate := time.Date(1970, 1, 1, 0, 0, 0, 0, time.UTC)

	fmt.Println(currentDate.Format("2006-01-02"))

	for {
		currentDate = currentDate.AddDate(0, 0, 1)

		isLeap = (!isLeapYear(currentDate.Year()) &&
			currentDate.Month() == 2 &&
			currentDate.Day() == 29)

		if isLeap {
			continue
		}

		fmt.Println(currentDate.Format("2006-01-02"))

		isEnd = (currentDate.Year() == 3000 &&
			currentDate.Month() == 1 &&
			currentDate.Day() == 1)

		if isEnd {
			break
		}
	}
}
