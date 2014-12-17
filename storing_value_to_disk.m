// Storing value to disk
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: E39F2B8E-46D1-4BF7-A7D8-231E35D7F237
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
    [[NSUserDefaults standardUserDefaults] setObject:@"Object" forKey:@"Key"];
    NSString* name = [[NSUserDefaults standardUserDefaults] objectForKey:@"Key"];