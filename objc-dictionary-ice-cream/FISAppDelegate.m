//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSDictionary *preferredIceCreamFlavors = @{@"Joe" : @"Peanut Butter and Chocolate",
                                               @"Tim" : @"Natural Vanilla",
                                               @"Sophie" : @"Mexican Chocolate",
                                               @"Deniz" : @"Natural Vanilla",
                                               @"Tom" : @"Mexican Chocolate",
                                               @"Jim" : @"Natural Vanilla",
                                               @"Mark" : @"Cookies 'n Cream"};
    return nil;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    return nil;
}

@end
