//
//  UITabBarController+MainTabBarController.m
//  test
//
//  Created by Manuel B Parungao Jr on 02/07/2017.
//  Copyright © 2017 Manuel B Parungao Jr. All rights reserved.
//

#import "MainTabViewController.h"

@implementation UITabBarController (MainTabViewController)

-(void)viewDidLoad
{
    self.navigationItem.hidesBackButton=YES;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Menu"
                                                                                                  style:UIBarButtonItemStylePlain
                                                                                                 target:self
                                                                                                 action:@selector(presentLeftMenuViewController:)];
    

}
-(void)viewDidAppear:(BOOL)animated
{
    
}
@end
