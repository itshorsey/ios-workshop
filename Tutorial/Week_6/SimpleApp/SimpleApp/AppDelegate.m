//
//  INAppDelegate.m
//  PropertyTest
//
//  Created by Ben Ford on 12/10/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "CircleView.h"

@interface AppDelegate() <UITableViewDelegate>
@end

#define CIRCLE_WIDTH 75.0f

@implementation AppDelegate
{
    UIWindow *window;

}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    CGRect rect = [UIScreen mainScreen].bounds;
    window = [[UIWindow alloc] initWithFrame:rect];
    
    
    
    window.backgroundColor = [UIColor whiteColor];
    
    
    
    CircleView *circle = [[CircleView alloc] init];
    circle.fillColor = [UIColor blackColor];
    circle.frame = CGRectMake(window.frame.size.width/2.0f-CIRCLE_WIDTH/2.0f,
                              window.frame.size.height/2.0f-CIRCLE_WIDTH/2.0f,
                              CIRCLE_WIDTH, CIRCLE_WIDTH);
    [window addSubview:circle];
    
    
    CircleView *petal = [[CircleView alloc] init];
    petal.fillColor = [UIColor yellowColor];
    petal.frame = CGRectMake(window.frame.size.width/2.0f-CIRCLE_WIDTH/2.0f, //xpos
                              circle.frame.origin.y-(CIRCLE_WIDTH+50.0f),
                              CIRCLE_WIDTH, CIRCLE_WIDTH+50.0f);
    [window addSubview:petal];
    
    
    CircleView *petal2 = [[CircleView alloc] init];
    petal2.fillColor = [UIColor yellowColor];
    petal2.frame = CGRectMake(0.0f, 0.0f, CIRCLE_WIDTH, CIRCLE_WIDTH+50.0f);

    petal2.layer.anchorPoint = CGPointMake(0.5f, 1.0f);
    petal2.layer.position = CGPointMake(window.frame.size.width/2.0f, window.frame.size.height/2.0f);
    petal2.transform = CGAffineTransformMakeRotation(M_PI/2.0f);

    [window addSubview:petal2];
    
    
    

    
    
    
    
    [window makeKeyAndVisible];
    
    
    
    
    
    
    
    
    

    
    return YES;
}


@end
