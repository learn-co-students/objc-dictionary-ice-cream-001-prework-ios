//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}



- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSDictionary *party = @{
        @"Joe" : @"Peanut Butter and Chocolate",
        @"Tim" : @"Natural Vanilla",
        @"Sophie" : @"Mexican Chocolate",
        @"Deniz" : @"Natural Vanilla",
        @"Tom" : @"Mexican Chocolate",
        @"Jim" : @"Natural Vanilla",
        @"Mark" : @"Cookies 'n Cream"
    };
    
    NSMutableArray *names = [[NSMutableArray alloc] init];
    for (NSString *name in party) {
        if ([party[name] isEqualToString:iceCream]) {
            [names addObject:name];
        }
    }
    return names;
}


- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *iceCreamCounts = [[NSMutableDictionary alloc] init];
    NSArray *iceCreamFlavors = [iceCreamByName allValues];
    
    for (NSString *flavor in iceCreamFlavors) {
        if (![iceCreamCounts objectForKey:flavor]) {
            // NSNumber *numberOfNames = @([[self namesForIceCream:flavor] count]);
            // we can use method above, easy cheesy, but it will only work for party dictionary
            // supplied in namesForIceCream method
            // which is conviniently equel to one in tests, but what if it happen to change?
            NSUInteger nameCounts = 0;
            for (NSString *name in iceCreamByName) {
                if ([iceCreamByName[name] isEqualToString:flavor]) {
                    nameCounts++;
                }
            }
            NSNumber *numberedNameCounts = @(nameCounts);
            iceCreamCounts[flavor] = numberedNameCounts;
        }
    }
    return iceCreamCounts;
}



@end
