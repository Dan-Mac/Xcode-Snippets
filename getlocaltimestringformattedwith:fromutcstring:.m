// getLocalTimeStringFormattedWith:FromUTCString:
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: D3B934FA-42F2-4FB8-920D-A257847EA848
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (NSString *)getLocalTimeStringFormattedWith:(NSString *)format
                                FromUTCString:(NSString *)utcDate {
    // UTC time
    NSDateFormatter *utcDateFormatter = [[NSDateFormatter alloc] init];
    [utcDateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
    [utcDateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];

    // utc format
    NSDate *dateInUTC = [utcDateFormatter dateFromString:utcDate];
    return [self getLocalTimeStringFormattedWith:format FromUTCDate:dateInUTC];
}