// MFMailComposeViewController Initialization & Delegate
// Methods required to use the iOS Mail Composer
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 1FFDB660-09F3-44B9-882B-F6CFFE2149AC
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

#import <MessageUI/MessageUI.h>

- (void)presentModalMailComposerViewController:(BOOL)animated {
    if ([MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *composeViewController = [[MFMailComposeViewController alloc] init];
        composeViewController.mailComposeDelegate = self;

        [composeViewController setSubject:<#Subject#>];
        [composeViewController setMessageBody:<#Body#> isHTML:YES];
        [composeViewController setToRecipients:@[<#Recipients#>]];

        [self presentViewController:composeViewController animated:animated completion:nil];
    } else {
        [[[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Error", nil) message:NSLocalizedString(@"<#Cannot Send Mail Message#>", nil) delegate:nil cancelButtonTitle:NSLocalizedString(@"OK", nil) otherButtonTitles:nil] show];
    }
}

#pragma mark - MFMailComposeViewControllerDelegate

- (void)mailComposeController:(MFMailComposeViewController *)controller
          didFinishWithResult:(MFMailComposeResult)result
                        error:(NSError *)error
{
    if (error) {
        NSLog(@"%@", error);
    }

    [self dismissViewControllerAnimated:YES completion:nil];
}
