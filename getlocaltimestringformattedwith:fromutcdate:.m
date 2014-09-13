// getLocalTimeStringFormattedWith:FromUTCDate:
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: A0364E1F-5C94-4EE3-B73A-54885B91B3AD
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (NSString *)getLocalTimeStringFormattedWith:(NSString *)format
                                  FromUTCDate:(NSDate *)utcDate {
    // offset second
    NSInteger seconds = [[NSTimeZone systemTimeZone] secondsFromGMT];

    // format it and send
    NSDateFormatter *localDateFormatter = [[NSDateFormatter alloc] init];
    [localDateFormatter setDateFormat:format];
    [localDateFormatter
        setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:seconds]];

    // formatted string
    NSString *localDate = [localDateFormatter stringFromDate:utcDate];

    // NSLog(@"%@",self.eventStartDate);
    NSLog(@"%@", localDate);
    return localDate;
}