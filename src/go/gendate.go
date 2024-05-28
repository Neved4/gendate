package main

import (
	"fmt"
	"time"
)

func main() {
	isEnd := false
	currentDate := time.Date(1970, 1, 1, 0, 0, 0, 0, time.UTC)

	fmt.Println(currentDate.Format("2006-01-02"))

	for {
		currentDate = currentDate.AddDate(0, 0, 1)

		fmt.Println(currentDate.Format("2006-01-02"))

		isEnd = currentDate.Year() == 3000 &&
			currentDate.Month() == 1 &&
			currentDate.Day() == 1

		if isEnd {
			break
		}
	}
}
