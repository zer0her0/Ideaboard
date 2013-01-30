//
//  IdeaboardViewController.m
//  Ideaboard
//
//  Created by Andrew Meier on 1/30/13.
//  Copyright (c) 2013 lgmp.info. All rights reserved.
//

#import "IdeaboardViewController.h"

#import "IdeaboardAppDelegate.h"
#import "EvernoteSession.h"
#import "EvernoteUserStore.h"

@interface IdeaboardViewController ()

@end

@implementation IdeaboardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Added for Evernote.
- (IBAction)testEvernoteAuth:(id)sender
{
    EvernoteSession *session = [EvernoteSession sharedSession];
    NSLog(@"Session host: %@", [session host]);
    NSLog(@"Session key: %@", [session consumerKey]);
    NSLog(@"Session secret: %@", [session consumerSecret]);
    
    [session authenticateWithViewController:self completionHandler:^(NSError *error) {
        if (error || !session.isAuthenticated){
            if (error) {
                NSLog(@"Error authenticating with Evernote Cloud API: %@", error);
            }
            if (!session.isAuthenticated) {
                NSLog(@"Session not authenticated");
            }
        } else {
            // We're authenticated!
            EvernoteUserStore *userStore = [EvernoteUserStore userStore];
            [userStore getUserWithSuccess:^(EDAMUser *user) {
                // success
                NSLog(@"Authenticated as %@", [user username]);
            } failure:^(NSError *error) {
                // failure
                NSLog(@"Error getting user: %@", error);
            } ];
        }
    }];
}

@end
