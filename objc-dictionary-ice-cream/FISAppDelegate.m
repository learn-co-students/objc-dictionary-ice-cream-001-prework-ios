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

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSDictionary *iceCreamPreferences = @{
                                          @"Joe" : @"Peanut Butter and Chocolate",
                                          @"Tim" : @"Natural Vanilla",
                                          @"Sophie" : @"Mexican Chocolate",
                                          @"Deniz" : @"Natural Vanilla",
                                          @"Tom" : @"Mexican Chocolate",
                                          @"Jim" : @"Natural Vanilla",
                                          @"Mark" : @"Cookies 'n Cream",
                                          };
    
    NSMutableArray *namesOfPeopleForIceCreamFlavor = [[NSMutableArray alloc] init];
    
    for (NSString *key in iceCreamPreferences) {
        if ([iceCreamPreferences[key] isEqualToString:iceCream]) {
            [namesOfPeopleForIceCreamFlavor addObject:key];
        }
    }

    
    return namesOfPeopleForIceCreamFlavor;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *countsOfIceCreamByName = [[NSMutableDictionary alloc] init];
    
    for (NSString *key in iceCreamByName) {
        
        if ([[countsOfIceCreamByName allKeys] containsObject:iceCreamByName[key]]) {
            continue;
        } else {
            NSArray *iceCreamNameCount = [self namesForIceCream:iceCreamByName[key]];
            NSNumber* iceCreamCount = [NSNumber numberWithLong:[iceCreamNameCount count]];
            [countsOfIceCreamByName setObject:iceCreamCount forKey:iceCreamByName[key]];
        }
        
        
        
    }
    
    return countsOfIceCreamByName;
}

@end
