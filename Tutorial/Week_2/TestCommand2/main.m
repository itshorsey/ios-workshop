//
//  main.m
//  TestCommand2
//
//  Created by Ben Ford on 11/19/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Employee.h"
#import "Manager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool
    {
        
        
        Employee *employee = [[Employee alloc] init];
        employee.firstName = @"Ben";
        employee.lastName = @"Ford";
        

        
        NSLog(@"age: %lu", (long)[employee age]);
        
        NSLog(@"name: %@", employee.fullName);
        
        
        
        Manager *manager = [[Manager alloc] init];
        manager.firstName = @"Joe";
        manager.lastName = @"Blow";
        
        NSLog(@"name: %@", manager.fullName);
    }
    
    return 0;
}

