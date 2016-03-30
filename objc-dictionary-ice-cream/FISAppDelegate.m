//  FISAppDelegate.m

#import "FISAppDelegate.h"

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
