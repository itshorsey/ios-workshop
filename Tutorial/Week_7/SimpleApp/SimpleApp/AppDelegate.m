//
//  INAppDelegate.m
//  PropertyTest
//
//  Created by Ben Ford on 12/10/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "FlowerView.h"

@interface AppDelegate() <UITableViewDelegate>
@end



@implementation AppDelegate
{
    UIWindow *window;

}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    CGRect rect = [UIScreen mainScreen].bounds;
    window = [[UIWindow alloc] initWithFrame:rect];
    
    
    
    window.backgroundColor = [UIColor whiteColor];
    
    
    FlowerView *flower = [[FlowerView alloc] init];
    
    flower.petalCount = 12;
    flower.petalColor = [UIColor redColor];
    
    flower.frame = CGRectMake(window.frame.size.width/2.0f-flower.frame.size.width/2.0f,
                              window.frame.size.height/2.0f-flower.frame.size.height/2.0f,
                              flower.frame.size.width, flower.frame.size.height);
    
    [window addSubview:flower];
    
    
    
    
    
    [window makeKeyAndVisible];

    
    return YES;
}




@end
