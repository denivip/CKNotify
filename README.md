#CKNotify Easy Start Guide

##What is it?
CKNotify is a framework for iOS, designed for both the iPhone and iPad. It provides easy-to-use banner style alerts which drop down in a view and display relevant information to the user. 

CKNotify makes it easy to attach swipe left or right selectors to the banners, giving a unique way to receive user interface feedback.

#Example
[ ![Image](https://raw.github.com/mschettler/CKNotify/master/Example/example_iphone.png "CKNotify - iPhone Example") ]()
[ ![Image](https://raw.github.com/mschettler/CKNotify/master/Example/example_alert.png "CKNotify - Example Alert") ]()

##Installing
Download and copy the entire CKNotify/ into your Xcode project, make sure these files are added

        CKAlertView.h
        CKAlertView.m
        CKAlertView.xib
        CKNotify.h
        CKNotify.m
        Images/
        
###Add: 
        #import "CKNotify.h"
to your project's .pch file

######If your code compiles you have successfully installed CKNotify!

##Presenting Banners (Alerts)
###Your first Alert


    [[CKNotify sharedInstance] presentAlert:CKNotifyAlertTypeError
                                  withTitle:@"Network Error"
                                    andBody:@"You have lost internet connection. Please reconnect."
                                     inView:self.view
                                forDuration:4.0];


###Easy alert with bound swipe actions


    CKAlertView *alert = [[CKNotify sharedInstance] presentAlert:CKNotifyAlertTypeError
                                                       withTitle:@"Network Error"
                                                         andBody:@"You have lost internet connection. Please reconnect."
                                                          inView:self.view
                                                     forDuration:4.0];
    
    [alert setSwipeLeftAction:@selector(didSwipeLeft) onTarget:self withObject:nil];
    [alert setSwipeRightAction:@selector(didSwipeRight) onTarget:self withObject:nil];
    [alert setTapAction:@selector(didTap) onTarget:self withObject:nil];


##Important Details
- Each alert by default will be dismissed when tapped. Use setTapAction: to disable/modify this behavior, set selector to nil to disable.
- A duration <= 0 will cause the alert to persist forever until tapped or removed programmatically.
- CKNotify supports multiple alerts on the screen at once. Alerts will stack and fade out as usual when their timers expire or when they are cleared via other means, i.e. [[CKNotify sharedInstance] dismissAllAlerts];

##Types of alerts
    CKNotifyAlertTypeSuccess  // Green, to indicate success
    CKNotifyAlertTypeInfo     // Blue, for information
    CKNotifyAlertTypeError    // Red, for warnings

##Alert Locations
    CKNotifyAlertLocationTop     // Alert will be anchored to the top of the view
    CKNotifyAlertLocationBottom  // Alert will be anchored to the bottom of the view

##Going Deeper
View the example project for more examples and utility functions

##Author
Matthew Schettler 2012 (mschettler@gmail.com)

###Questions? Contact me personally via email above, http://mschettler.com/, or through github!

###Read blogs? Try mine: http://mschettler.com/blog/

Thanks to Kumar Mugunth for some helpful ideas

##Release Notes

Version 1.1 - Release 8/8/2012
* Code appears completely stable, ready for public. Releasing to github, hoping to find those interested in co-development!

#Copyright and license
Copyright 2012 Matthew Schettler

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.