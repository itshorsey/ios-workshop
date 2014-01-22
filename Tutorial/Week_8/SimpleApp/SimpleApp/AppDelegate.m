//
//  INAppDelegate.m
//  PropertyTest
//
//  Created by Ben Ford on 12/10/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "FlowerViewController.h"
#import "PictureViewController.h"

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
    

    
    FlowerViewController *viewController = [[FlowerViewController alloc] init];
    
    window.rootViewController = viewController;
    
    
    [window makeKeyAndVisible];

    
    return YES;
}
#pragma mark -



+ (AppDelegate *)delegate
{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

- (void)showPictureViewController
{
    PictureViewController *newViewController = [[PictureViewController alloc] init];
    window.rootViewController = newViewController;
}

- (void)showFlowerViewController
{
    FlowerViewController *newViewController = [[FlowerViewController alloc] init];
    window.rootViewController = newViewController;
}

@end
