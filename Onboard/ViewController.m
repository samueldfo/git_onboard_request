//
//  ViewController.m
//  Onboard
//
//  Created by Taqtile on 9/8/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

//as linhas de separação das células não aparecem no modo visualização 50%

#import "ViewController.h"
#import "Users.h"
#import "DetailViewController.h"


@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController {
    NSArray *_tableData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    self.title = @"Users";
    
    _tableView.bounces = NO;
    
    [Users list:@1 callback:^(NSMutableArray*result){
        _tableData  = result;
        _tableView.reloadData;
    } ];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
//    User *user = [_tableData objectAtIndex:indexPath.row];
    
//    cell.textLabel.text = [NSString stringWithFormat:@"ID: %@", user.userId];
//    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@", user.firstName, user.lastName];
//    cell.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL: [NSURL URLWithString: user.avatar]]];
//    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"ID: %@",[[_tableData objectAtIndex:indexPath.row] objectForKey:@"id"]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",
                                                    [[_tableData objectAtIndex:indexPath.row] objectForKey:@"first_name"],
                                                    [[_tableData objectAtIndex:indexPath.row] objectForKey:@"last_name"]];
    cell.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL: [NSURL URLWithString: [[_tableData objectAtIndex: indexPath.row] objectForKey:@"avatar"]]]];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DetailViewController *detailViewController = [[DetailViewController alloc] init];
    
    Users *user = [_tableData objectAtIndex:indexPath.row];
    detailViewController.selectedUser = user;
    
    NSLog(@"%@",user);
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
