//
//  ViewController.m
//  UITabBar
//
//  Created by Phu Huynh on 8/15/15.
//  Copyright (c) 2015 Phu Huynh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //UITabBarController *tabBarController = (UITabBarController*)[UIApplication sharedApplication].keyWindow.rootViewController ;
    
    // [self.tabBarController setDelegate:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)removeMeFromTabBarController:(id)sender{
    NSMutableArray * viewControllers = [NSMutableArray arrayWithArray:self.tabBarController.viewControllers];
    
    [viewControllers removeObjectAtIndex:0];
    
    [self.tabBarController setViewControllers:viewControllers animated:YES];
    
}

- (BOOL)tabBarController:(UITabBarController *)aTabBar
shouldSelectViewController:(UIViewController *)viewController
{
 
    if ( [viewController.restorationIdentifier  isEqual: @"Contact1"]){
        return NO;
    }else{
        return YES;
    }
   
}


@end
