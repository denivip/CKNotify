//
//  AppDelegate.h
//  CKNotifyExample
//
//  Created by Matthew Schettler (mschettler@gmail.com, mschettler.com) on 3/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;


// Don't forget to    #import "CKNotify.h"    in your .pch file

@end
