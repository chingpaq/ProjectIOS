//
//  ViewController.h
//  ProjectIOS
//
//  Created by Manuel B Parungao Jr on 03/07/2017.
//  Copyright © 2017 Manuel B Parungao Jr. All rights reserved.
//

#import <UIKit/UIKit.h>
@import FBSDKCoreKit;
@import FBSDKLoginKit;
@import TwitterKit;
@import GoogleSignIn;
@import Firebase;
#import "UIViewController+Alerts.h"
@import SVProgressHUD;

@interface LoginViewController : UIViewController<GIDSignInUIDelegate>
@property(strong, nonatomic) FIRAuthStateDidChangeListenerHandle handle;
@property (weak, nonatomic) IBOutlet UIButton *FacebookLoginButton;
@property (strong, nonatomic) IBOutlet UIView *loginButton;
@property (weak, nonatomic) IBOutlet UITextField *emailTextBox;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextbox;

- (void)firebaseLoginWithCredential:(FIRAuthCredential *)credential;


@end

