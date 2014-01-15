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
        
        self.strokeColor = [UIColor blackColor];
        self.fillColor = [UIColor blackColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(context, self.strokeColor.CGColor);
    CGContextSetFillColorWithColor(context, self.fillColor.CGColor);

    CGRect strokeRect = CGRectInset(rect, 1, 1);
    
    CGContextFillEllipseInRect(context, strokeRect);
    CGContextStrokeEllipseInRect(context, strokeRect);
    
}

@end
