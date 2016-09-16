//
//  User.m
//  Onboard
//
//  Created by Taqtile on 13/09/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initWithData:(NSNumber*)userId firstName:(NSString*)firstName lastName:(NSString*)lastName avatar:(NSString*)avatar
{
    self = [super init];
    if (self) {
        self.userId = userId;
        self.firstName = firstName;
        self.lastName = lastName;
        self.avatar = avatar;
    }
    return self;
}

-(NSArray*)toArray {
 
    NSArray *UserArray = @[self.userId, self.firstName, self.lastName, self.avatar];
    
    return UserArray;
}

//-(NSDictionary*)toDictionary {
//    
//    return @{@"ID":self.userId,
//             @"First Name":self.firstName,
//             @"Last Name":self.lastName,
//             @"Avatar":self.avatar
//             };
//}

@end