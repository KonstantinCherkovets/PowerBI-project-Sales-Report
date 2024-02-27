-- Cleaned DIM_Calendar Table --
SELECT 
	[DateKey]
    ,d.FullDateAlternateKey
      --	,[DayNumberOfWeek]
      --	,[EnglishDayNameOfWeek]
      --	,[SpanishDayNameOfWeek]
      --	,[FrenchDayNameOfWeek]
      --	,[DayNumberOfMonth]
      --	,[DayNumberOfYear]
      --	,[WeekNumberOfYear]
    ,d.EnglishMonthName
      --	,[SpanishMonthName]
      --	,[FrenchMonthName]
    ,d.MonthNumberOfYear
      --	,[CalendarQuarter]
    ,d.CalendarYear
      --	,[CalendarSemester]
      --	,[FiscalQuarter]
      --	,[FiscalYear]
      --	,[FiscalSemester]
FROM 
	[AdventureWorksDW2019].[dbo].[DimDate] as d
WHERE 
  CalendarYear BETWEEN 2018 AND 2020
