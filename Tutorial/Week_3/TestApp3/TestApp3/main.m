//
//  main.m
//  TestApp3
//
//  Created by Ben Ford on 12/3/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Rules for Retain/Release/Autorelease
        
        // 1) You own any object you create
        
        // 2) You can take ownership of an object using retain
        
        // 3) When you no longer need it, you must relinquish ownership of an object you own
        
        // 4) You must not relinquish ownership of an object you do not own
        
        NSString *myName = @"first string";

        NSString *anotherName = [[NSString alloc] initWithFormat:@"first string"];
        
        NSLog(@"string 1: '%@'", myName);
        NSLog(@"string 2: '%@'", anotherName);
        
        BOOL areTheyEqual = [myName isEqualToString:anotherName];
        [anotherName release];
        
        NSLog(@"equal: %d", areTheyEqual);
        
        
        NSDate *today;
        NSDate *today2;
        
        // this is a trick.  Because we didn't alloc init the dates
        // we do not own them, so do not call release.
        // ( I didn't cover this scenario in workshop.)
        today = today2 = [NSDate date];

        
        
        BOOL areTheyEqual2 = [today isEqualToDate:today2];
        NSLog(@"date equal: %d", areTheyEqual2);
        
        
    }
    return 0;
}

