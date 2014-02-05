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
    NSArray *list;
}

- (id)init
{
    if (self = [super init]) {
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"Two" image:[UIImage imageNamed:@"drawer.png"] selectedImage:nil];
        self.tabBarItem = item;
        
        NSMutableArray *fillList = [[NSMutableArray alloc] init];
        for (NSUInteger i = 0; i < 100; i++) {
            [fillList addObject:[NSString stringWithFormat:@"%lu", (unsigned long)i]];
        }
        list = [[NSArray alloc] initWithArray:fillList];
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
- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView
           editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}
#pragma mark -


#pragma mark UITableViewDatasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"cell"];
        
        cell.editing = YES;
    }

    
    cell.textLabel.text = list[indexPath.row];
    
    
    return cell;
}
#pragma mark -

@end
