//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */

- (NSArray *) namesForIceCream: (NSString *)iceCream{
    NSDictionary *namesToIceCream = @{ @"Joe" : @"Peanut Butter and Chocolate",
                                       @"Tim" : @"Natural Vanilla",
                                       @"Sophie" : @"Mexican Chocolate",
                                       @"Deniz" : @"Natural Vanilla",
                                       @"Tom" : @"Mexican Chocolate",
                                       @"Jim" : @"Natural Vanilla",
                                       @"Mark" : @"Cookies 'n Cream" };
    NSMutableArray *names = [[NSMutableArray alloc] init];
    for (NSString *name in namesToIceCream) {
        if ([namesToIceCream[name] isEqualToString:iceCream]) {
            [names addObject:name];
        }
    }
    
    return names;
}

- (NSDictionary *) countsOfIceCream: (NSDictionary *)iceCreamByName{
    NSMutableDictionary *counts = [ @{ @"Peanut Butter and Chocolate" : @0,
                                @"Mexican Chocolate" : @0,
                                @"Natural Vanilla" : @0,
                                @"Cookies 'n Cream" : @0 }
                                   mutableCopy ];

    for (NSString *iceCream in [counts allKeys]) {
        counts[iceCream] = @([[self namesForIceCream:iceCream] count]);
    }
    return counts;
}

@end
