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
-(NSArray *)namesForIceCream:(NSString *)iceCream {
    NSMutableArray *favoriteFlavor = [[NSMutableArray alloc] init];
    NSDictionary *iceCreamByName = @{@"Joe" : @"Peanut Butter and Chocolate",
                                      @"Tim" : @"Natural Vanilla",
                                      @"Sophie" : @"Mexican Chocolate",
                                      @"Deniz" : @"Natural Vanilla",
                                      @"Tom" : @"Mexican Chocolate",
                                      @"Jim" : @"Natural Vanilla",
                                      @"Mark" : @"Cookies 'n Cream"};
    for (NSString *key in [iceCreamByName allKeys]) {
        if ([iceCreamByName[key] isEqualToString:iceCream]) {
            [favoriteFlavor addObject:key];
        }
    }
    return favoriteFlavor;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *countsOfIceCream = [[NSMutableDictionary alloc] init];
    for (NSString *key in [iceCreamByName allKeys]) {
        NSString *iceCream = iceCreamByName[key];
        NSArray *favorites = [self namesForIceCream:iceCream];
        NSUInteger numberFavoritesInt = [favorites count];
        NSNumber *numberFavorites = @(numberFavoritesInt);
        countsOfIceCream[iceCream] = numberFavorites;
        }
    return countsOfIceCream;
}

@end
