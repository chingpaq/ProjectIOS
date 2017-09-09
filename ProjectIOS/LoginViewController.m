//
//  ViewController.m
//  ProjectIOS
//
//  Created by Manuel B Parungao Jr on 03/07/2017.
//  Copyright © 2017 Manuel B Parungao Jr. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.navigationController.navigationBarHidden=YES;
    self.handle = [[FIRAuth auth]
                   addAuthStateDidChangeListener:^(FIRAuth *_Nonnull auth, FIRUser *_Nullable user) {
                       
                       
                       if (user!=nil)
                       {
                           self.navigationController.navigationBarHidden=NO;
                           [self performSegueWithIdentifier:@"ShowHome" sender:nil];
                           
                       }
                   }];
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    

}
- (IBAction)FacebookLoginButtonWasPressed:(id)sender {
    FBSDKLoginManager *loginManager = [[FBSDKLoginManager alloc] init];
    [loginManager logInWithReadPermissions:@[ @"public_profile", @"email" ]
                        fromViewController:self
                                   handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
                                       if (error) {
                                           NSLog(@"FBLogin Error");
                                       } else if (result.isCancelled) {
                                           NSLog(@"FBLogin cancelled");
                                       } else {
                                           FIRAuthCredential *credential = [FIRFacebookAuthProvider
                                                                            credentialWithAccessToken:[FBSDKAccessToken currentAccessToken].tokenString];
                                           
                                           [self firebaseLoginWithCredential:credential];
                                       }
                                   }];
     

}
- (IBAction)loginWasPressed:(id)sender {
    
    [SVProgressHUD show];
    [[FIRAuth auth] signInWithEmail:self.emailTextBox.text
                           password:self.passwordTextbox.text
                         completion:^(FIRUser *user, NSError *error) {
                             [SVProgressHUD dismiss];
                             
                             if (error) {
                                 
                                 [self showMessagePrompt:error.localizedDescription];
                                 return;
                             }
                             
                         }];
//    self.navigationController.navigationBarHidden=NO;
//    [self performSegueWithIdentifier:@"ShowHome" sender:nil];

}

- (void)firebaseLoginWithCredential:(FIRAuthCredential *)credential
{
    if ([FIRAuth auth].currentUser) {
        [[FIRAuth auth]
         .currentUser linkWithCredential:credential
         completion:^(FIRUser *_Nullable user, NSError *_Nullable error) {
             NSLog(@"Account already linked");
         }];
    } else {
        [[FIRAuth auth] signInWithCredential:credential
                                  completion:^(FIRUser *user, NSError *error) {
                                      NSLog(@"Account Created");
                                  }];
    }
}
- (IBAction)forgotPasswordPressed:(id)sender {
[self showMessagePrompt:@"Not yet implemented"];
}

@end
