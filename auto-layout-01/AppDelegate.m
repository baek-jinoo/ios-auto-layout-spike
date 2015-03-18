//
//  AppDelegate.m
//  auto-layout-01
//
//  Created by Jinwoo Baek on 3/17/15.
//  Copyright (c) 2015 Lumos Labs Inc. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ViewController *viewController = [[ViewController alloc] init];
    CGRect screenFrame = [UIScreen mainScreen].bounds;
    self.window = [[UIWindow alloc] initWithFrame:screenFrame];
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end