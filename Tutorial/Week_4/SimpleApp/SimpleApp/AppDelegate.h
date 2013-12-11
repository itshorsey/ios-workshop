//
//  INAppDelegate.h
//  PropertyTest
//
//  Created by Ben Ford on 12/10/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

// static types
// do NOT use pointers
// @property (nonatomic, assign)

// BOOL, NSInteger, CGFloat






// dynamic types
// ALWAYS use pointers
// @property (nonatomic, strong)
// @property (nonatomic, weak) <-- only sometimes

// NSArray, NSDate, NSNumber, NSDictionary, NSTimer



@property (nonatomic, strong) NSArray *publicArray;

@end
