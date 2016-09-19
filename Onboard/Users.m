//
//  Users.m
//  Onboard
//
//  Created by Taqtile on 9/8/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "Users.h"
#import "DebugMacros.h"
#import "AFNetworking.h"

@implementation Users

+(void)list:(NSNumber*)page callback:(void (^)(NSMutableArray*result))parsingFinished;
{
    DLog();
    
    NSMutableArray *listOfUsers = [NSMutableArray new];
    
    NSString *URLString = @"http://reqres.in/api/users";
    NSDictionary *params = @{@"page": page};
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];

    [manager GET:URLString parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSDictionary *userDic =(NSDictionary *)responseObject;
        for (NSDictionary *userArray in [userDic objectForKey:@"data"])
            [listOfUsers addObject:userArray];
        parsingFinished([listOfUsers copy]);
        //NSLog(@"%@", listOfUsers);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}

-(void)incrementViewCount:(NSNumber*)id;
{
    DLog();

}

-(void)resetViewCount:(NSNumber*)id;
{
    DLog();
}

-(NSNumber*)getViewCount:(NSNumber*)id;
{
    DLog();
    NSNumber* viewCount= @0;
    return viewCount;
}

@end
