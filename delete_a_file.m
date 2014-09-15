// Delete a file
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: EA8C0EEA-6C60-47D6-8ACC-416D372D7B30
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
NSFileManager *fileManager = [NSFileManager defaultManager];
NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
NSString *imagesPath = [documentsPath stringByAppendingPathComponent:@"images"];
if (![fileManager fileExistsAtPath:imagesPath]) {
    [fileManager createDirectoryAtPath:imagesPath withIntermediateDirectories:NO attributes:nil error:nil];
}