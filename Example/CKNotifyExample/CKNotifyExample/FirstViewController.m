//
//  FirstViewController.m
//  CKNotifyExample
//
//  Created by Matthew Schettler on 3/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Simple";
        
        int y = [UIScreen mainScreen].bounds.size.height - 200;
        int w = [UIScreen mainScreen].bounds.size.width - 10;
        
        UIButton *g = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [g setTitle:@"Green" forState:UIControlStateNormal];
        [g addTarget:self action:@selector(green) forControlEvents:UIControlEventTouchDown];
        [g setFrame:CGRectMake(5, y, w, 33)];
        [self.view addSubview:g];

        UIButton *r = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [r setTitle:@"Red" forState:UIControlStateNormal];
        [r addTarget:self action:@selector(red) forControlEvents:UIControlEventTouchDown];
        [r setFrame:CGRectMake(5, y+33*1, w, 33)];
        [self.view addSubview:r];

        UIButton *b = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [b setTitle:@"Blue" forState:UIControlStateNormal];
        [b addTarget:self action:@selector(blue) forControlEvents:UIControlEventTouchDown];
        [b setFrame:CGRectMake(5, y+33*2, w, 33)];
        [self.view addSubview:b];

    }
    return self;
}
         
- (void)green {
    
    // Don't forget to    #import "CKNotify.h"    in your .pch file

    [[CKNotify sharedInstance] presentAlert:CKNotifyAlertTypeSuccess withTitle:@"Hello World!" andBody:@"This is an example green notification" inView:self.view forDuration:4.0];
    
}

- (void)red {
    
    if (UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPad) {
        // iPhone/iPod
        [[CKNotify sharedInstance] presentAlert:CKNotifyAlertTypeError
                                      withTitle:@"Hello World!"
                                        andBody:@"This is an example red notification, with a long body message. We have 2 lines max."
                                         inView:self.view
                                    forDuration:5.0];
    } else {
        // iPad
        [[CKNotify sharedInstance] presentAlert:CKNotifyAlertTypeError
                                      withTitle:@"Hello World!"
                                        andBody:@"This is an example red notification, with a long body message. We have alot more room on an alert using the iPad. Test test test! You can display whatever you want to your users here."
                                         inView:self.view
                                    forDuration:5.0];
        
    }
}

- (void)blue {
    
    [[CKNotify sharedInstance] presentAlert:CKNotifyAlertTypeInfo withTitle:@"This is an alert with no body" andBody:nil inView:self.view forDuration:5.0];
    
}

@end
