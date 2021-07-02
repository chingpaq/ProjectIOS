//
//  NSObject+reSideMenuSingleton.h
//  ProjectIOS
//
//  Created by Manuel B Parungao Jr on 05/07/2017.
//  Copyright © 2017 Manuel B Parungao Jr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RESideMenu.h"
#import "MenuViewController.h"
#import "MainViewController.h"

@interface reSideMenuSingleton:NSObject
+ (id)sharedManager;
+ (id)restartSharedManager;
- (id)init;
@property(nonatomic, strong) RESideMenu *sideMenuViewController;
@property(nonatomic, strong) UIStoryboard* _mainStoryBoard;
@property(nonatomic, strong) UIViewController *vc;
@property(nonatomic,strong)MainViewController *mainViewController;
@end
