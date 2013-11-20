//
//  main.m
//  TestCommand2
//
//  Created by Ben Ford on 11/19/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // basic types
        float weight = 73.55555f;
        double thing = 3.0;
        
        
        // how to use "format" strings
        int number = 5;
        NSLog(@"this is a int: %i, %1.2f, %1.2f", number, weight, thing);
        
        // %@ prints strings
        NSString *title = @"this is a title";
        NSLog(@"this is a string: %@", title);
        
        // BOOL has 4 possible values
        BOOL boolOne = YES;
        BOOL boolTwo = NO;
        BOOL boolThree = TRUE;
        BOOL boolFour = FALSE;
        NSLog(@"four BOOLs: %d, %d, %d, %d", boolOne, boolTwo, boolThree, boolFour);
        
        // most people use YES and NO
        
        // BOOL can be weird
        // http://weblog.bignerdranch.com/564-bools-sharp-corners/
        BOOL truth = 3; // this is neither YES or NO
        
        // but it's still true because any positive value is true in C
        if (truth)
            NSLog(@"yes it's true");
        
        
        // arrays
        
        // new syntax
        NSArray *numbers = @[@"one", @"two", @"three"];

        // old way (don't forget the sentinal -> nil)
        NSArray *numbersOldWay = [[NSArray alloc] initWithObjects:@"one", @"two", @"three", nil];
        
        NSLog(@"two arrays: %@, %@", numbers, numbersOldWay);
        
        
        // arrays can many different types
        NSDate *today = [NSDate date];
        NSArray *myListOfPeople = @[@"one", @"two", @"three", today];
        
        NSLog(@"this is my array: %@", myListOfPeople);
        

        // to view type of each object
        for (NSString *item in myListOfPeople) {
            NSLog(@"item: %@", [item class]);
        }
        

    }
    return 0;
}

