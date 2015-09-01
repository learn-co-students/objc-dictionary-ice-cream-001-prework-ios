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

- (NSArray *)namesForIceCream:(NSString *)iceCream{
    
    NSDictionary *namesIceCream = @{@"Joe"      : @"Peanut Butter and Chocolate",
                                    @"Tim"      : @"Natural Vanilla",
                                    @"Sophie"   : @"Mexican Chocolate",
                                    @"Deniz"    : @"Natural Vanilla",
                                    @"Tom"      : @"Mexican Chocolate",
                                    @"Jim"      : @"Natural Vanilla",
                                    @"Mark"     : @"Cookies 'n Cream"
                                    };
    
    NSMutableArray *names = [[NSMutableArray alloc]init];
    
    for (NSString *key in namesIceCream) {
        if ([namesIceCream[key] isEqualToString:iceCream]) {
            [names addObject:key];
        }
    }
    
    return names;
    };

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSMutableDictionary *countsByIceCream = [ @{} mutableCopy ];
    
    
    for (NSString *key in iceCreamByName) {
        NSUInteger count = [[self namesForIceCream:iceCreamByName[key]] count];
        NSNumber *countNum = @(count);
        countsByIceCream[iceCreamByName[key]] = countNum;
       // mJenny[@"last_name"] = @"Curran";
    };
    
    
    
    return countsByIceCream;
    };

@end
