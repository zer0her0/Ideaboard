//
//  IdeaboardAppDelegate.h
//  Ideaboard
//
//  Created by Andrew Meier on 1/30/13.
//  Copyright (c) 2013 lgmp.info. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IdeaboardViewController;

@interface IdeaboardAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) IdeaboardViewController *viewController;

@end
