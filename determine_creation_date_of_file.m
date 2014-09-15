// Determine creation date of file
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 229F31A4-B902-41C7-8894-A772FFE8641C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
NSFileManager *fileManager = [NSFileManager defaultManager];
NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
NSString *filePath = [documentsPath stringByAppendingPathComponent:@"Document.pages"];

NSDate *creationDate = nil;
if ([fileManager fileExistsAtPath:filePath]) {
    NSDictionary *attributes = [fileManager attributesOfItemAtPath:filePath error:nil];
    creationDate = attributes[NSFileCreationDate];
}