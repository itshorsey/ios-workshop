//
//  INViewController.m
//  PropertyTest
//
//  Created by Ben Ford on 12/10/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import "FlowerViewController.h"
#import "FlowerView.h"
#import "AppDelegate.h"
#import "PictureViewController.h"

// adopt private protocols here
@interface FlowerViewController ()
@end

@implementation FlowerViewController
{
    
    // private instance variables go here
}

- (id)init
{
    if (self = [super init]) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    FlowerView *flower = [[FlowerView alloc] init];
    
    flower.petalCount = 12;
    flower.petalColor = [UIColor redColor];
    
    flower.frame = CGRectMake(self.view.frame.size.width/2.0f-flower.frame.size.width/2.0f,
                              self.view.frame.size.height/2.0f-flower.frame.size.height/2.0f,
                              flower.frame.size.width, flower.frame.size.height);
    
    [self.view addSubview:flower];
    
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self action:@selector(didTap:)];
    
    [self.view addGestureRecognizer:tapGesture];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
}

- (void)didTap:(UITapGestureRecognizer *)gesture
{
    [[AppDelegate delegate] showPictureViewController];
    
    // alternatively, we can show a view controller as a modal
    // [self showPictureViewControllerAsModal];
}

- (void)showPictureViewControllerAsModal
{
    PictureViewController *viewController = [[PictureViewController alloc] init];
    viewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;

    [self presentViewController:viewController
                       animated:YES completion:nil];
}

@end
