//
//  DetailViewController.m
//  Onboard
//
//  Created by Taqtile on 09/09/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "DetailViewController.h"
#import "Users.h"

@interface DetailViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation DetailViewController

    NSArray *_userData;

    NSArray *_dictValues;
    NSArray *_dictKeys;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    self.title = @"User";
    
    _tableView.bounces = NO;
    
    _dictValues = [NSArray arrayWithArray:[_selectedUser allValues]];
    _dictKeys = @[@"Id", @"First Name", @"Last Name", @"Avatar"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_selectedUser count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"DETAILS";
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
        cell.textLabel.text = [NSString stringWithFormat:@"%@",[_dictKeys objectAtIndex:indexPath.row]];
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",[_dictValues objectAtIndex:indexPath.row]];
    
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
