//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *) namesForIceCream: (NSString *)iceCream {
    NSDictionary *iceCreamPreferences = @{@"Joe"    : @"Peanut Butter and Chocolate",
                                          @"Tim"    : @"Natural Vanilla",
                                          @"Sophie" : @"Mexican Chocolate",
                                          @"Deniz"  : @"Natural Vanilla",
                                          @"Tom"    : @"Mexican Chocolate",
                                          @"Jim"    : @"Natural Vanilla",
                                          @"Mark"   : @"Cookies 'n Cream"};
    
    NSMutableArray *personWithFlavor = [[NSMutableArray alloc] init];
    
    for (NSString *name in iceCreamPreferences) {
        if ([iceCreamPreferences[name] isEqualToString:iceCream]) {
            [personWithFlavor addObject:name];
        }
    }
    NSLog(@"%@", personWithFlavor);
    return personWithFlavor;
}

- (NSDictionary *) countsOfIceCream: (NSDictionary *)iceCreamByName {
    NSMutableDictionary *countsByIceCream = [[NSMutableDictionary alloc]init];
    
    for (NSString *nNames in [iceCreamByName allKeys]) {
        NSString *flavor = iceCreamByName[nNames];
        NSArray *groupNames = [self namesForIceCream:flavor];
        NSUInteger nameCount = groupNames.count;
        NSNumber *numberNameCount = @(nameCount);
        countsByIceCream[flavor] = numberNameCount;
    }
    return countsByIceCream;
}

@end
