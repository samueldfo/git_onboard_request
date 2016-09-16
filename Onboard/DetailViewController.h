//
//  DetailViewController.h
//  Onboard
//
//  Created by Taqtile on 09/09/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface DetailViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) User* selectedUser;

//@property NSDictionary* selectedUser;

@end
