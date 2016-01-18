//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream {
    NSDictionary *iceCreamPreference = @{@"Joe" : @"Peanut Butter and Chocolate",
                                         @"Tim" : @"Natural Vanilla",
                                         @"Sophie" : @"Mexican Chocolate",
                                         @"Deniz" : @"Natural Vanilla",
                                         @"Tom" : @"Mexican Chocolate",
                                         @"Jim" : @"Natural Vanilla",
                                         @"Mark" : @"Cookies 'n Cream"};
    
    NSMutableArray *namesBasedOnPreference = [[NSMutableArray alloc] init];
    
    for (NSString *person in [iceCreamPreference allKeys]) {
        if ([iceCreamPreference[person] isEqualToString:iceCream]) {
            [namesBasedOnPreference addObject:person];
        }
    }
      return namesBasedOnPreference;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *flavorDict = [@{} mutableCopy];
    for (NSString *flavor in [iceCreamByName allValues]) {
        if (!flavorDict[flavor]) {
            flavorDict[flavor] = @([[self namesForIceCream:flavor] count]);
        }
    }
    return flavorDict;
}


@end
