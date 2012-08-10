//
//  CKNotify.h
//  cknotify
//
//  Created by Matthew Schettler (mschettler@gmail.com, mschettler.com) on 3/19/12.
//  Fork this project at https://github.com/mschettler/CKNotify
//  Copyright (c) 2012 CKDesign. All rights reserved.
//
//  Version: 1.1
//
//  Don't forget to    #import "CKNotify.h"    in your .pch file
//


#import <Foundation/Foundation.h>
#import "CKAlertView.h"

@interface CKNotify : NSObject {
    
    NSMutableDictionary *currentAlerts;     // a dict mapping alert.uniqueID (key) to a CKAlertView object
    NSMutableArray *currentAlertsOrdered;   // a list of alerts in the order that the were created. oldest object at index 0
    
}


// Generate an alert. The most commonly used function of the library. Will appear from the top
- (CKAlertView *)presentAlert:(CKNotifyAlertType)type 
                    withTitle:(NSString *)title
                      andBody:(NSString *)body 
                       inView:(UIView *)view 
                  forDuration:(float)duration;



// Generate an alert with an location argument, EX present an alert from the bottom of the view
- (CKAlertView *)presentAlert:(CKNotifyAlertType)type 
                    withTitle:(NSString *)title
                      andBody:(NSString *)body 
                       inView:(UIView *)view 
                  forDuration:(float)duration
                 fromLocation:(CKNotifyAlertLocation)location;



// dismiss all visible alerts
- (void)dismissAllAlerts;

// dismiss all alerts for a given view
- (void)dismissAllAlertsInView:(UIView *)view;

// retrieve a pointer to this singleton object
+ (CKNotify *)sharedInstance;

// manually trigger an alert to show (should never need to use this)
- (void)showAlert:(CKAlertView *)alert usingView:(UIView *)view forDuration:(float)duration;

// Do not call any of these manually, they are used internally.
- (void)dismissAlert:(CKAlertView *)alert;

@end
