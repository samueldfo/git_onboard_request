//
//  User.h
//  Onboard
//
//  Created by Taqtile on 13/09/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Users.h"

@interface User : NSObject

- (instancetype)initWithData:(NSNumber*)userId firstName:(NSString*)firstName lastName:(NSString*)lastName avatar:(NSString*)avatar;

@property (nonatomic, strong) NSNumber* userId;
@property (nonatomic, strong) NSString* firstName;
@property (nonatomic, strong) NSString* lastName;
@property (nonatomic, strong) NSString* avatar;

- (NSArray*)toArray;

//- (NSDictionary*)toDictionary;

@end
