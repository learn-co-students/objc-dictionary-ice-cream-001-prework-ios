//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *) namesForIceCream:(NSString *)iceCream{
    NSArray *names = [[NSMutableArray alloc]init];
    NSDictionary *nameByIceCream = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                                     @"Tim"    : @"Natural Vanilla"            ,
                                     @"Sophie" : @"Mexican Chocolate"          ,
                                     @"Deniz"  : @"Natural Vanilla"            ,
                                     @"Tom"    : @"Mexican Chocolate"          ,
                                     @"Jim"    : @"Natural Vanilla"            ,
                                     @"Mark"   : @"Cookies 'n Cream"          };
    names = [[nameByIceCream allKeysForObject:iceCream]mutableCopy];
    return names;
}

- (NSDictionary* ) countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *iceCreamCount = [[NSMutableDictionary alloc]init];
    
iceCreamCount[@"Peanut Butter and Chocolate"] = @([[iceCreamByName allKeysForObject:@"Peanut Butter and Chocolate"]count]);
    
iceCreamCount[@"Natural Vanilla"] = @([[iceCreamByName allKeysForObject:@"Natural Vanilla"]count]);

iceCreamCount[@"Mexican Chocolate"] = @([[iceCreamByName allKeysForObject:@"Mexican Chocolate"]count]);

iceCreamCount[@"Cookies 'n Cream"] = @([[iceCreamByName allKeysForObject:@"Cookies 'n Cream"]count]);

    
    return iceCreamCount;
}

@end
