// Time code
// Records the elapsed time between two points
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 3AABD7C5-FF4D-4418-A484-AEC8E1568CF1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSDate *startRecordingTime = [NSDate date];
    
    
    NSDate *endRecordingTime = [NSDate date];
    NSTimeInterval elapsedTime = [endRecordingTime timeIntervalSinceDate:startRecordingTime];
    NSLog(@"Elapsed time = %f", elapsedTime);