//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSMutableArray *names = [[NSMutableArray alloc] init];
    
    NSDictionary *iceCreamNames = @{ @"Joe" : @"Peanut Butter and Chocolate",
                                     @"Tim" : @"Natural Vanilla",
                                     @"Sophie" : @"Mexican Chocolate",
                                     @"Deniz" : @"Natural Vanilla",
                                     @"Tom" : @"Mexican Chocolate",
                                     @"Jim" : @"Natural Vanilla",
                                     @"Mark" : @"Cookies 'n Cream" };
    
    
    for (NSString *key in iceCreamNames) {
        NSLog(@"%@ will be having %@", key, iceCreamNames[key]);
        
        if ([iceCreamNames[key] isEqualToString:iceCream]) {
            [names addObject:key];
        }
    }
    
    return names;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    
    NSMutableDictionary *mIceCreamByName = [[NSMutableDictionary alloc] init];
    
    
    for (NSString *name in iceCreamByName) {
        if (![[mIceCreamByName allKeys] containsObject:iceCreamByName[name]]) {
            mIceCreamByName[iceCreamByName[name]] = @0;
        }
    }
    
    // This prints a set of keys with zeros for all the values in the passed array
    NSLog(@"%@", mIceCreamByName);
    
    
    for (NSString *iceCream in [mIceCreamByName allKeys]) {
        NSArray *namesForIceCream = [self namesForIceCream:iceCream];
        
        NSUInteger iceCreamCount = namesForIceCream.count;
        NSNumber *iceCreamNumber = @(iceCreamCount);
        
        mIceCreamByName[iceCream] = iceCreamNumber;
    }
    
    NSDictionary *resultDictionary = [NSDictionary dictionaryWithDictionary:mIceCreamByName];
    
    
    return resultDictionary;
}

@end
