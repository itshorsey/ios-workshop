//
//  INAppDelegate.m
//  PropertyTest
//
//  Created by Ben Ford on 12/10/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "FlowerView.h"

@interface AppDelegate()
@end



@implementation AppDelegate
{
    UIWindow *window;

}

#pragma mark - UIApplicationDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    CGRect rect = [UIScreen mainScreen].bounds;
    window = [[UIWindow alloc] initWithFrame:rect];
    
    
    window.backgroundColor = [UIColor whiteColor];
    
    [self showFlower];
    
    
    [window makeKeyAndVisible];

    
    return YES;
}
#pragma mark -

- (void)showFlower
{
    FlowerView *flower = [[FlowerView alloc] init];
    
    flower.petalCount = 12;
    flower.petalColor = [UIColor redColor];
    
    flower.frame = CGRectMake(window.frame.size.width/2.0f-flower.frame.size.width/2.0f,
                              window.frame.size.height/2.0f-flower.frame.size.height/2.0f,
                              flower.frame.size.width, flower.frame.size.height);
    
    [window addSubview:flower];
}

+ (AppDelegate *)delegate
{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

@end
