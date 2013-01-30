//
//  IdeaboardViewController.h
//  Ideaboard
//
//  Created by Andrew Meier on 1/30/13.
//  Copyright (c) 2013 lgmp.info. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IdeaboardViewController : UIViewController

// Added for Evernote.
@property (strong, nonatomic) IBOutlet UIButton *testButton;
- (IBAction)testEvernoteAuth:(id)sender;

@end
