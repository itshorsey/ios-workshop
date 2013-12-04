//
//  Employee.h
//  TestCommand2
//
//  Created by Ben Ford on 11/26/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

// assign property
@property (nonatomic, assign) NSInteger age;


// strong property
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;

// readonly property example
@property (weak, nonatomic, readonly) NSString *fullName;


@end
