//
//  DetailViewController.m
//  Onboard
//
//  Created by Taqtile on 09/09/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "DetailViewController.h"
#import "Users.h"
#import "User.h"

@interface DetailViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation DetailViewController

    NSArray *_userData;

//    NSArray *_dictValues;
//    NSArray *_dictKeys;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    self.title = @"User";

    _userData = [self.selectedUser toArray];
    
        _tableView.bounces = NO;
    
//    _userData = [self.selectedUser toDictionary];
//    NSLog(@"%@",_userData);
    
//    _dictValues = [NSArray arrayWithArray:[_selectedUser allValues]];
//    _dictKeys = [NSArray arrayWithArray:[_selectedUser allKeys]];

//    remove células vazias no final
//    _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
//  _tableView.backgroundView = nil;
//  _tableView.backgroundColor = [UIColor colorWithRed:239/255.0 green:239/255.0 blue:244/255.0 alpha:1.0];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_userData count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"DETAILS";
}

/*
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}
*/
/*
- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    
    // Text Color
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    [header.textLabel setTextColor:[UIColor lightGrayColor]];
    [header.textLabel setFont:[UIFont boldSystemFontOfSize:10]];
    
}
*/
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    NSString *key;
    NSString *value;
    
    switch (indexPath.row) {
        case 0:
            key = @"ID";
            value = [NSString stringWithFormat:@"%@", self.selectedUser.userId];
            break;
        case 1:
            key = @"First Name";
            value = [NSString stringWithFormat:@"%@", self.selectedUser.firstName];
            break;
        case 2:
            key = @"Last Name";
            value = [NSString stringWithFormat:@"%@", self.selectedUser.lastName];
            break;
        case 3:
            key = @"Avatar";
            value = [NSString stringWithFormat:@"%@", self.selectedUser.avatar];
            break;
        default:
            break;
    }
    
    cell.textLabel.text = key;
    cell.detailTextLabel.text = value;
    
    //    cell.textLabel.text = [NSString stringWithFormat:@"%@",[_dictKeys objectAtIndex:indexPath.row]];
    //    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",[_dictValues objectAtIndex:indexPath.row]];
    
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
