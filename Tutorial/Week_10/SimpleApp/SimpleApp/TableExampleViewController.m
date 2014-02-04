//
//  INViewController.m
//  PropertyTest
//
//  Created by Ben Ford on 12/10/13.
//  Copyright (c) 2013 Instrument Marketing, Inc. All rights reserved.
//

#import "TableExampleViewController.h"

// adopt private protocols here
@interface TableExampleViewController () <UITableViewDataSource, UITableViewDelegate>
@end

@implementation TableExampleViewController
{
    
    // private instance variables go here
}

- (id)init
{
    if (self = [super init]) {
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"Two" image:[UIImage imageNamed:@"drawer.png"] selectedImage:nil];
        self.tabBarItem = item;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    // create
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
    

 
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
#pragma mark -


#pragma mark UITableViewDatasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = @"Hello #2";
    
    return cell;
}
#pragma mark -

@end
