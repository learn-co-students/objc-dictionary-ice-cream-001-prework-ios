//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSMutableArray *names = [[NSMutableArray alloc] init];
    
    NSDictionary *favoriteIceCreams = @{ @"Joe"     : @"Peanut Butter and Chocolate",
                                         @"Tim"     : @"Natural Vanilla",
                                         @"Sophie"  : @"Mexican Chocolate",
                                         @"Deniz"   : @"Natural Vanilla",
                                         @"Tom"     : @"Mexican Chocolate",
                                         @"Jim"     : @"Natural Vanilla",
                                         @"Mark"    : @"Cookies 'n Cream"};
    
    for (NSString *name in [favoriteIceCreams allKeys]) {
        if ([iceCream isEqualToString:favoriteIceCreams[name]]) {
            [names addObject:name];
        }
    }
    
    return names;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSSet *allFlavors = [NSSet setWithArray:[iceCreamByName allValues]];
    
    NSMutableDictionary *iceCreamCounts = [[NSMutableDictionary alloc] init];
    
    for (NSString *flavor in allFlavors) {
        iceCreamCounts[flavor] = @([[self namesForIceCream:flavor] count]);
    }
    
    return iceCreamCounts;
}

@end
