//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSMutableArray *names = [NSMutableArray array];
    NSDictionary *preferredIceCreamFlavors = @{@"Joe" : @"Peanut Butter and Chocolate",
                                               @"Tim" : @"Natural Vanilla",
                                               @"Sophie" : @"Mexican Chocolate",
                                               @"Deniz" : @"Natural Vanilla",
                                               @"Tom" : @"Mexican Chocolate",
                                               @"Jim" : @"Natural Vanilla",
                                               @"Mark" : @"Cookies 'n Cream"};
    for (NSString *name in [preferredIceCreamFlavors allKeys]) {
        if ([preferredIceCreamFlavors[name] isEqualToString:iceCream]) {
            [names addObject:name];
        }
    }
    return names;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    return nil;
}

@end
