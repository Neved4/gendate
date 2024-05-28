open System

let isLeapYear year =
    (year % 4 = 0 && year % 100 <> 0) || (year % 400 = 0)

let main =
    let mutable isEnd = false
    let mutable isLeap = false
    let mutable currentDate = DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc)

    printfn "%s" (currentDate.ToString("yyyy-MM-dd"))

    while not isEnd do
        currentDate <- currentDate.AddDays(1.0)

        isLeap <- (not (isLeapYear currentDate.Year) &&
                    currentDate.Month = 2 &&
                    currentDate.Day = 29)

        if isLeap then
            ()
        else
            printfn "%s" (currentDate.ToString("yyyy-MM-dd"))

        isEnd <- (currentDate.Year = 3000 &&
                    currentDate.Month = 1 &&
                    currentDate.Day = 1)
