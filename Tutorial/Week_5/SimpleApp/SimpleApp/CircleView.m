//
//  CircleView.m
//  SimpleApp
//
//  Created by Ben Ford on 1/7/14.
//  Copyright (c) 2014 Instrument Marketing, Inc. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    
    CGRect strokeRect = CGRectInset(rect, 1, 1);
    CGContextStrokeEllipseInRect(context, strokeRect);
}

@end
