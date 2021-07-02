//
//  UIViewController+CreateAccountViewController.h
//  ProjectIOS
//
//  Created by Manuel B Parungao Jr on 05/07/2017.
//  Copyright © 2017 Manuel B Parungao Jr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+Alerts.h"
@import SVProgressHUD;

@import Firebase;

@interface CreateAccountViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *emailTextbox;
@property (weak, nonatomic) IBOutlet UITextField *firstnameTextbox;
@property (weak, nonatomic) IBOutlet UITextField *lastnameTextbox;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextbox;
@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordTextbox;
@property (weak, nonatomic) IBOutlet UIButton *signupButton;


@end
