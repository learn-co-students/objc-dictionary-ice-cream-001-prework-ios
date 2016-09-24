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

- (NSArray *)namesForIceCream:(NSString *)iceCream
{
    NSDictionary *iceCreamByName = @{ @"Joe": @"Peanut Butter and Chocolate",
                                      @"Tim": @"Natural Vanilla",
                                      @"Sophie": @"Mexican Chocolate",
                                      @"Deniz": @"Natural Vanilla",
                                      @"Tom": @"Mexican Chocolate",
                                      @"Jim": @"Natural Vanilla",
                                      @"Mark": @"Cookies 'n Cream"};
    NSMutableArray *names = [[NSMutableArray alloc] init];
    
    for (NSString *name in iceCreamByName) {
        if ([iceCreamByName[name] isEqualToString:iceCream]) {
            [names addObject:name];
        }
    }
    
    return names;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName
{
    NSMutableDictionary *countsByType = [[NSMutableDictionary alloc] init];
    
    for (NSString *name in iceCreamByName) {
        NSString *iceCream = iceCreamByName[name];
        if (![countsByType objectForKey:iceCream]) {
            countsByType[iceCream] = @1;
        } else {
            countsByType[iceCream] = @([countsByType[iceCream] integerValue] + 1);
        }
    }
    
    return countsByType;
}

@end
