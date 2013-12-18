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

@implementation AppDelegate
{
    UIWindow *window;

}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    CGRect rect = [UIScreen mainScreen].bounds;
    window = [[UIWindow alloc] initWithFrame:rect];
    
    
    window.backgroundColor = [UIColor whiteColor];
    
    
    
    
    UIView *view = [[UIView alloc] initWithFrame:
                    CGRectMake(50.0f, 150.0f, 100.0f, 100.0f)];
    view.backgroundColor = [UIColor greenColor];
    [window addSubview:view];
    
    UIView *view2 = [[UIView alloc] initWithFrame:
                    CGRectMake(10.0f, 10.0f, 20.0f, 20.0f)];
    view2.backgroundColor = [UIColor yellowColor];
    [view addSubview:view2];
    
    UIImage *image = [UIImage imageNamed:@"Flower.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    

    CGRect newPosition = imageView.frame;
    newPosition.origin = CGPointMake(100.0f, 100.0f);
    imageView.frame = newPosition;
    
    
    CircleView *circle = [[CircleView alloc] init];
    circle.frame = CGRectMake(200.0f, 200.0f, 75.0f, 75.0f);
    [window addSubview:circle];
    
    
    
    [window addSubview:imageView];

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    [window makeKeyAndVisible];
    
    return YES;
}


@end
