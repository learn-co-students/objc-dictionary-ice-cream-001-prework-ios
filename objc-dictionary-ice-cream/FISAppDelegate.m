//
//  FISAppDelegate.m
//  objc-dictionary-ice-cream
//
//  Created by Mark Murray on 7/6/15.
//  Copyright (c) 2015 Mark Murray. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */

//i just realized i've been forgetting comments
//oops


//array to declare my dictionary and create an array to list names
-(NSArray *)namesForIceCream:(NSString *)iceCream{
    
    NSDictionary *iceCreamByName = @{  @"Joe"    : @"Peanut Butter and Chocolate",
                                       @"Tim"    : @"Natural Vanilla"            ,
                                       @"Sophie" : @"Mexican Chocolate"          ,
                                       @"Deniz"  : @"Natural Vanilla"            ,
                                       @"Tom"    : @"Mexican Chocolate"          ,
                                       @"Jim"    : @"Natural Vanilla"            ,
                                       @"Mark"   : @"Cookies 'n Cream"          };
    
    NSMutableArray *iceCreamPeople = [[NSMutableArray alloc] init];
    
    for(NSString *key in [iceCreamByName allKeys]){
        //
        if ([iceCreamByName[key] isEqualToString:iceCream]){
            [iceCreamPeople addObject:key];
        
        }
    
    }
    
    
    return [NSArray arrayWithArray:iceCreamPeople];

}

//method to count the list of people who likes diferent flaaaaavors
-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSMutableDictionary *countsOfIceCream = [[NSMutableDictionary alloc] init];
    
    for(NSString *key in iceCreamByName){
        NSString *iceCream = iceCreamByName[key];
        NSArray *currentNames = [self namesForIceCream:iceCream];
        countsOfIceCream[iceCream] = [NSNumber numberWithInteger:currentNames.count];
        
    }

    
    return [NSDictionary dictionaryWithDictionary:countsOfIceCream];
    
}

















@end
