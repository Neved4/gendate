#!/usr/bin/env lua

function isLeapYear(year)
	return (year % 4 == 0 and year % 100 ~= 0) or (year % 400 == 0)
end

function main()
	local currentDate = os.time({year = 1970, month = 1, day = 1})
	local isEnd, isLeap = false, false

	print(os.date("%Y-%m-%d", currentDate))

	while true do
		currentDate = os.time({year = os.date("%Y", currentDate), month = os.date("%m", currentDate), day = os.date("%d", currentDate) + 1})

		isLeap = (not isLeapYear(os.date("%Y", currentDate)) and
				  os.date("%m", currentDate) == "02" and
				  os.date("%d", currentDate) == "29")

		if isLeap then
			goto continue
		end

		print(os.date("%Y-%m-%d", currentDate))

		isEnd = (os.date("%Y", currentDate) == "3000" and
				 os.date("%m", currentDate) == "01" and
				 os.date("%d", currentDate) == "01")

		if isEnd then
			break
		end

		::continue::
	end
end

main()
