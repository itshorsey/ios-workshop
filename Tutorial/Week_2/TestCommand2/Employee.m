//
//  Employee.m
//  TestCommand2
//
//  Created by Ben Ford on 11/26/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import "Employee.h"

@implementation Employee

- (id)init
{
    // 1) call [super init] and assin to self
    self = [super init];

    // 2) check that self exists
    if (self) {
        // initialize here
        
        self.age = 32;
        self.firstName = @"John";
        self.lastName = @"Doe";
        
    }
    // 3 return self
    return self;
}

// implement the readonly property
- (NSString *)fullName
{
    return [[NSString alloc] initWithFormat:@"%@ %@", self.firstName, self.lastName];
}

@end
