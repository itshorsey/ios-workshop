//
//  FlowerView.m
//  SimpleApp
//
//  Created by Ben Ford on 1/14/14.
//  Copyright (c) 2014 Instrument Marketing, Inc. All rights reserved.
//

#import "FlowerView.h"
#import "CircleView.h"

#define CIRCLE_WIDTH 75.0f


@implementation FlowerView
{
    CircleView *circle;
    
}

- (id)init
{
    self = [super initWithFrame:CGRectMake(0.0f, 0.0f, 200.0f, 200.0f)];
    if (self) {
        
        
        _petalColor = [UIColor yellowColor];
        _petalCount = 6;
        
        [self drawPetals];
        
        circle = [[CircleView alloc] init];
        circle.fillColor = [UIColor blackColor];
        circle.frame = CGRectMake(self.frame.size.width/2.0f-CIRCLE_WIDTH/2.0f,
                                  self.frame.size.height/2.0f-CIRCLE_WIDTH/2.0f,
                                  CIRCLE_WIDTH, CIRCLE_WIDTH);
        [self addSubview:circle];
        
    }
    return self;
}

- (void)setPetalCount:(NSUInteger)petalCount
{
    _petalCount = petalCount;
    
    [self drawPetals];
    
}

- (void)setPetalColor:(UIColor *)petalColor
{
    _petalColor = petalColor;
    
    [self drawPetals];
}

- (void)drawPetals
{
    // remove all views but leave the circle
    for (UIView *view in self.subviews) {
        if (view != circle)
            [view removeFromSuperview];
    }
    
    [self makePetalsWithCount:self.petalCount color:self.petalColor];
}

- (void)makePetalsWithCount:(NSUInteger)petalCount color:(UIColor *)color
{
    CGFloat degreeIncrement = M_PI*2.0f / petalCount;
    
    for (NSUInteger i = 0; i < petalCount; i++) {
        
        CircleView *petal2 = [[CircleView alloc] init];
        petal2.fillColor = color;
        petal2.frame = CGRectMake(0.0f, 0.0f, CIRCLE_WIDTH, CIRCLE_WIDTH+50.0f);
        
        petal2.layer.anchorPoint = CGPointMake(0.5f, 1.0f);
        petal2.layer.position = CGPointMake(self.frame.size.width/2.0f,
                                            self.frame.size.height/2.0f);
        
        CGFloat degrees = degreeIncrement*i;
        
        CGAffineTransform rotate = CGAffineTransformMakeRotation(degrees);
        CGAffineTransform translate = CGAffineTransformMakeTranslation(0.0f, -CIRCLE_WIDTH/2.0f);
        petal2.transform = CGAffineTransformConcat(translate, rotate);
        
        [self addSubview:petal2];
    }
}


@end
