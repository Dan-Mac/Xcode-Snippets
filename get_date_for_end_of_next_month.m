// Get Date For End of Next Month
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: A6050DCC-2A32-4C97-B9C7-5E1E84A198D3
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (NSDate *)getDateForEndOfNextMonth {
    NSDate *curDate = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *comps =
        [calendar components:NSYearCalendarUnit | NSMonthCalendarUnit |
                             NSWeekCalendarUnit | NSWeekdayCalendarUnit
                    fromDate:curDate];  // Get necessary date components

    // add 2 to the month and set day to 0, as that is the last day of the
    // previous month, giving us the last day of next month
    [comps setMonth:[comps month] + 2];
    [comps setDay:0];
    NSDate *lastDayOfNextMonth = [calendar dateFromComponents:comps];
    return lastDayOfNextMonth;
}