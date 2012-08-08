
#Quickstart

##Installing

	Download and copy all files into your XCode project. 
	Add: 
		#import "CKNotify.h"
	to your project's .pch file


##Your first Alert


    [[CKNotify sharedInstance] presentAlert:CKNotifyAlertTypeError
                                  withTitle:@"Network Error"
                                    andBody:@"You have lost internet connection. Please reconnect."
                                     inView:self.view
                                forDuration:4.0];


##Easy alert with bound swipe actions


    CKAlertView *alert = [[CKNotify sharedInstance] presentAlert:CKNotifyAlertTypeError
                                                       withTitle:@"Network Error"
                                                         andBody:@"You have lost internet connection. Please reconnect."
                                                          inView:self.view
                                                     forDuration:4.0];
    
    [alert setSwipeLeftAction:@selector(didSwipeLeft) onTarget:self withObject:nil];
    [alert setSwipeRightAction:@selector(didSwipeRight) onTarget:self withObject:nil];
    [alert setTapAction:@selector(didTap) onTarget:self withObject:nil];


#Details
	Each alert by default will be dismissed when tapped. Use setTapAction: to disable/modify this behavior.

	A duration <= 0 will cause the alert to persist forever and never be dismissed -- until tapped or removed programmatically 


#Types of alerts
    CKNotifyAlertTypeSuccess  // green
    CKNotifyAlertTypeInfo	  // blue
    CKNotifyAlertTypeError    // red


#Alert Locations
    CKNotifyAlertLocationTop     // Alert will be tied to the top of the view
    CKNotifyAlertLocationBottom  // Alert will be tied to the bottom of the view


#Author
Matthew Schettler 2012 (mschettler@gmail.com)

Thanks to Kumar Mugunth for some helpful ideas



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