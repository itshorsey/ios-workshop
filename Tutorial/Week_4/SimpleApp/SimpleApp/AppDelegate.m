//
//  INAppDelegate.m
//  PropertyTest
//
//  Created by Ben Ford on 12/10/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate() <UITableViewDelegate>
@end

@implementation AppDelegate
{

    NSArray *privateArray;
    
    UITableView *tableView;

}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // first method that runs in the app
    
    NSArray *array = @[  @"one", @"two", @"three"  ];
    self.publicArray = array;

    
    
    [NSTimer scheduledTimerWithTimeInterval:3.0f target:self selector:@selector(didFireTimer:)
                                   userInfo:nil repeats:YES];
    
    
    
    // weak properties are used to avoid "retain cycles"
    // retain signifies "object ownership"
    // because we own the tableView object and it should not own us
    // the delegate property on UITableView is a `weak` property
    tableView = [[UITableView alloc] init];
    tableView.delegate = self;
    
    
    
    
    
    // sample method
    [self createArrayWithCount:10 type:@"numbers" mutable:YES];
    
    
    
    return YES;
}



// sample method
- (void)createArrayWithCount:(NSUInteger)count type:(NSString *)typeString
                     mutable:(BOOL)mutable
{
    
}




- (void)didFireTimer:(NSTimer *)timer
{
    NSLog(@"timer did fire");
    
    NSLog(@"publicArray: %@", self.publicArray);
    
}


@end
