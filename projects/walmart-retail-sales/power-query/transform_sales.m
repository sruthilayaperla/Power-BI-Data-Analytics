let
    // Create a Text parameter named pCsvPath in Power Query.
    // Set it to the full path of the downloaded WalmartSalesData.csv.csv file.
    Source = Csv.Document(
        File.Contents(pCsvPath),
        [
            Delimiter = ",",
            Encoding = 65001,
            QuoteStyle = QuoteStyle.Csv
        ]
    ),
    PromotedHeaders = Table.PromoteHeaders(
        Source,
        [PromoteAllScalars = true]
    ),
    ChangedTypes = Table.TransformColumnTypes(
        PromotedHeaders,
        {
            {"Invoice ID", type text},
            {"Branch", type text},
            {"City", type text},
            {"Customer type", type text},
            {"Gender", type text},
            {"Product line", type text},
            {"Unit price", type number},
            {"Quantity", Int64.Type},
            {"Tax 5%", type number},
            {"Total", type number},
            {"Date", type date},
            {"Time", type time},
            {"Payment", type text},
            {"cogs", type number},
            {"gross margin percentage", type number},
            {"gross income", type number},
            {"Rating", type number}
        },
        "en-US"
    ),
    TrimmedText = Table.TransformColumns(
        ChangedTypes,
        {
            {"Invoice ID", Text.Trim, type text},
            {"Branch", Text.Trim, type text},
            {"City", Text.Trim, type text},
            {"Customer type", Text.Trim, type text},
            {"Gender", Text.Trim, type text},
            {"Product line", Text.Trim, type text},
            {"Payment", Text.Trim, type text}
        }
    ),
    AddedYearMonth = Table.AddColumn(
        TrimmedText,
        "Year Month",
        each Date.ToText([Date], "yyyy-MM", "en-US"),
        type text
    ),
    AddedYearMonthSort = Table.AddColumn(
        AddedYearMonth,
        "Year Month Sort",
        each Date.Year([Date]) * 100 + Date.Month([Date]),
        Int64.Type
    ),
    AddedDayName = Table.AddColumn(
        AddedYearMonthSort,
        "Day Name",
        each Date.DayOfWeekName([Date], "en-US"),
        type text
    ),
    AddedDayNumber = Table.AddColumn(
        AddedDayName,
        "Day Number",
        each Date.DayOfWeek([Date], Day.Monday) + 1,
        Int64.Type
    ),
    AddedHour = Table.AddColumn(
        AddedDayNumber,
        "Hour",
        each Time.Hour([Time]),
        Int64.Type
    ),
    AddedTimeOfDay = Table.AddColumn(
        AddedHour,
        "Time of Day",
        each
            if [Time] < #time(12, 0, 0) then "Morning"
            else if [Time] < #time(17, 0, 0) then "Afternoon"
            else "Evening",
        type text
    )
in
    AddedTimeOfDay
