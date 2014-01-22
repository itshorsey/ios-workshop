//
//  PictureViewController.m
//  SimpleApp
//
//  Created by Ben Ford on 1/21/14.
//  Copyright (c) 2014 Instrument Marketing, Inc. All rights reserved.
//

#import "PictureViewController.h"
#import "AppDelegate.h"

@interface PictureViewController ()

@end

@implementation PictureViewController

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor clearColor];
    
    UIImage *image = [UIImage imageNamed:@"Flower.png"];
    UIImageView *flowerImage = [[UIImageView alloc] initWithImage:image];
    
    flowerImage.frame = CGRectMake(self.view.frame.size.width/2.0f-flowerImage.frame.size.width/2.0f,
                                   self.view.frame.size.height/2.0f-flowerImage.frame.size.height/2.0f,
                                   flowerImage.frame.size.width,
                                   flowerImage.frame.size.height);
    
    [self.view addSubview:flowerImage];
 
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self action:@selector(didTap:)];
    
    [self.view addGestureRecognizer:tapGesture];

}

- (void)didTap:(UITapGestureRecognizer *)gesture
{
    [[AppDelegate delegate] showFlowerViewController];
}


@end
