//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream{
    NSDictionary *favorites =
        @{ @"Joe"    : @"Peanut Butter and Chocolate",
           @"Tim"    : @"Natural Vanilla",
           @"Sophie" : @"Mexican Chocolate",
           @"Tom"    : @"Mexican Chocolate",
           @"Deniz"  : @"Natural Vanilla",
           @"Jim"    : @"Natural Vanilla",
           @"Mark"   : @"Cookies 'n Cream"};
    
    NSMutableArray *favoriteMatch = [NSMutableArray new];
    for (NSString *key in favorites) {
        if ([favorites[key] isEqualToString:iceCream]) {
        [favoriteMatch addObject:key];
        }
    }
    return favoriteMatch;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *favoriteCount = [NSMutableDictionary new];
    NSArray *iceCreamTypes = [NSMutableArray new];
    iceCreamTypes = [iceCreamByName allValues];
    for (NSString *value in iceCreamTypes) {
        NSMutableArray *countPeeps = [NSMutableArray new];
        countPeeps = [self namesForIceCream:value];
        NSUInteger count = [countPeeps count];
        NSNumber *negSeven = @(count);
        favoriteCount[value] = negSeven;
    }
    return favoriteCount;
}

@end
