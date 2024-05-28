using System;

namespace LeapYear
{
	class Program
	{
		static bool IsLeapYear(int year)
		{
			return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
		}

		static void Main(string[] args)
		{
			bool isEnd = false, isLeap = false;
			DateTime currentDate = new DateTime(1970, 1, 1);

			Console.WriteLine(currentDate.ToString("yyyy-MM-dd"));

			while (true)
			{
				currentDate = currentDate.AddDays(1);

				isLeap = (!IsLeapYear(currentDate.Year) &&
					currentDate.Month == 2 &&
					currentDate.Day == 29);

				if (isLeap)
				{
					continue;
				}

				Console.WriteLine(currentDate.ToString("yyyy-MM-dd"));

				isEnd = (currentDate.Year == 3000 &&
					currentDate.Month == 1 &&
					currentDate.Day == 1);

				if (isEnd)
				{
					break;
				}
			}
		}
	}
}
