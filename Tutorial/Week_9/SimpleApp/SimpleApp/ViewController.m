//
//  INViewController.m
//  PropertyTest
//
//  Created by Ben Ford on 12/10/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import "ViewController.h"

// adopt private protocols here
@interface ViewController () <UIPickerViewDataSource, UIPickerViewDelegate>
@end

@implementation ViewController
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
	
    
    // create picker
    UIPickerView *picker = [[UIPickerView alloc] initWithFrame:
                            CGRectMake(0.0f, 0.0f, self.view.frame.size.width, 100.0f)];
    picker.delegate = self;
    picker.dataSource = self;
    
    [self.view addSubview:picker];
    
    
    // create label
    UILabel *instructionLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0f,
                                                                          picker.frame.origin.y+picker.frame.size.height,
                                                                          self.view.bounds.size.width, 300.0f)];
    instructionLabel.text = @"Tap anywhere on the screen\n to show an alert view.";
    // 0 indicates unlimited
    instructionLabel.numberOfLines = 0;
    [self.view addSubview:instructionLabel];
    
    
    // create tap gesture
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTap:)];
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

- (void)didTap:(UITapGestureRecognizer *)tapGesture
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"message"
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"Option 1", @"Option 2", nil];

    [alert show];
}

#pragma mark - UIPickerViewDelegate
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (row == 0)
        return @"test test test";
    
    if (row == 1)
        return @"another item";
    
    if (row == 2)
        return @"some thing else";
    
    
    return @"default choice";
}
#pragma mark -

#pragma mark  UIPickerViewDatasource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 10;
}
#pragma mark -

#pragma mark UIAlertViewDelegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"user tapped: %d", buttonIndex);
}

- (void)willPresentAlertView:(UIAlertView *)alertView
{
    NSLog(@"willPresentAlertView");
}

- (void)didPresentAlertView:(UIAlertView *)alertView
{
    NSLog(@"didPresentAlertView");
}

#pragma mark -

@end
