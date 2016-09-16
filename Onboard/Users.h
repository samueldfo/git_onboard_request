//
//  Users.h
//  Onboard
//
//  Created by Taqtile on 9/8/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Users : NSObject

+(NSArray*)list:(NSNumber*)page;

-(void)incrementViewCount:(NSNumber*)id;

-(void)resetViewCount:(NSNumber*)id;

-(NSNumber*)getViewCount:(NSNumber*)id;

@end


//(+) means class method = can be called without an instance of the class being instantiated). So you call it like this:
//[className classMethod];

//(-) means instance method = needs to instantiate an object first, then you can call the method on the object
//SomeClass* myInstance = [[SomeClass alloc] init];
//[myInstance instanceMethod];

