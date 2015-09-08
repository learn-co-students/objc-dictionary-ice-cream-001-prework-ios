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
    
    NSLog(@"%@",[self namesForIceCream:@"Mexican Chocolate"]);
    
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */


-(NSArray *)namesForIceCream:(NSString *)iceCream{
    
    NSDictionary * markNote = @{@"Joe" : @"Peanut Butter and Chocolate",
                                @"Tim" : @"Natural Vanilla",
                                @"Sophie" : @"Mexican Chocolate",
                                @"Deniz" : @"Natural Vanilla",
                                @"Tom" : @"Mexican Chocolate",
                                @"Jim" : @"Natural Vanilla",
                                @"Mark" : @"Cookies 'n Cream",
                                };

    
    NSArray * names = [markNote allKeysForObject:iceCream];
    NSLog(@"%@", [markNote allKeysForObject:iceCream]);
    
    [self countsOfIceCream:markNote];
    
    return names;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSArray * iceName = [iceCreamByName allValues];
    NSLog(@"%@",iceName);

    NSSet * uniqueIceCream = [NSSet setWithArray:iceName];
    NSArray * arrayU = [uniqueIceCream allObjects];
    NSLog(@"%@ and %@ array",uniqueIceCream,arrayU);

    
    NSCountedSet * countedIceCreamName = [NSCountedSet setWithArray:iceName];
    NSMutableDictionary * finalIceCream = [[NSMutableDictionary alloc]init];

    for ( int i = 0 ; i < arrayU.count ; i++){
        int x = [countedIceCreamName countForObject: arrayU[i]]; // not sure what I did wrong....
        [finalIceCream setObject:[NSNumber numberWithInt:x] forKey: arrayU[i]];
        NSLog(@"%i-ICE %@",x,arrayU[i]);
    }
    NSLog(@"Final ices are %@",finalIceCream);
    return  finalIceCream;
}

@end
