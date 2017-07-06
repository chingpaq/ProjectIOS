//
//  AppDelegate.h
//  ProjectIOS
//
//  Created by Manuel B Parungao Jr on 03/07/2017.
//  Copyright © 2017 Manuel B Parungao Jr. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;
@import GoogleSignIn;
@import FBSDKCoreKit;
@import Fabric;
@import TwitterKit;
@import SVProgressHUD;

#import "NSObject+reSideMenuSingleton.h"



@interface AppDelegate : UIResponder <UIApplicationDelegate,GIDSignInDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

