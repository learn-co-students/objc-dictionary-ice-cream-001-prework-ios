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

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    NSDictionary *namesAndIceCreams = @{@"Joe" : @"Peanut Butter and Chocolate", @"Tim" : @"Natural Vanilla", @"Sophie" : @"Mexican Chocolate", @"Deniz" : @"Natural Vanilla", @"Tom" : @"Mexican Chocolate", @"Jim" : @"Natural Vanilla", @"Mark" : @"Cookies 'n Cream"};
    
    NSMutableArray *namesForIceCreamType = [[NSMutableArray alloc] init];
    
    for (NSString *person in namesAndIceCreams) {
        if ([iceCream isEqualToString:namesAndIceCreams[person]]) {
            [namesForIceCreamType addObject:person];
        }
    }
    
    return namesForIceCreamType;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableArray *iceCreamTypes = [[NSMutableArray alloc] init];
    NSMutableDictionary *numberLikeEachType = [[NSMutableDictionary alloc] init];
    
    for (NSString *person in iceCreamByName) {
        [iceCreamTypes removeObjectIdenticalTo:iceCreamByName[person]];
        [iceCreamTypes addObject:iceCreamByName[person]];
    }
    
    for (NSString *uniqueIceCreamType in iceCreamTypes) {
        NSUInteger likes = [[self namesForIceCream:uniqueIceCreamType] count];
        NSNumber *cvtLikes = @(likes);
        numberLikeEachType[uniqueIceCreamType] = cvtLikes;
    }
    
    return numberLikeEachType;
}

@end
