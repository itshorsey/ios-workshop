//
//  INAppDelegate.m
//  PropertyTest
//
//  Created by Ben Ford on 12/10/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate()
@end



@implementation AppDelegate
{
    UIWindow *window;
}

#pragma mark - UIApplicationDelegate
- (BOOL)application:(UIApplication *)application
                didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    CGRect rect = [UIScreen mainScreen].bounds;
    window = [[UIWindow alloc] initWithFrame:rect];

    window.backgroundColor = [UIColor whiteColor];
    

    
    ViewController *viewController = [[ViewController alloc] init];
    
    window.rootViewController = viewController;
    
    
    [window makeKeyAndVisible];

    
    return YES;
}
#pragma mark -



+ (AppDelegate *)delegate
{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

@end
