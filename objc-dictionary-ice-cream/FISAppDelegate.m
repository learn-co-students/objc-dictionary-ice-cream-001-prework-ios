//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    NSMutableArray *iceCreamMutableArray = [[NSMutableArray alloc]init];
    NSDictionary *namesAndIceCream = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                                        @"Tim"    : @"Natural Vanilla"            ,
                                        @"Sophie" : @"Mexican Chocolate"          ,
                                        @"Deniz"  : @"Natural Vanilla"            ,
                                        @"Tom"    : @"Mexican Chocolate"          ,
                                        @"Jim"    : @"Natural Vanilla"            ,
                                        @"Mark"   : @"Cookies 'n Cream"          };
    for (NSString *key in namesAndIceCream) {
        if ([namesAndIceCream[key] isEqualToString:iceCream]) {
            [iceCreamMutableArray addObject:key];
        }
    }
    
    return iceCreamMutableArray;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *countDictionary = [[NSMutableDictionary alloc] init];
    
    for (NSString *key in iceCreamByName) {
        NSString *iceCreamName = iceCreamByName[key];
        NSArray *names = [self namesForIceCream:iceCreamByName[key]];
        NSUInteger nameUnsignedIntNumbers = [names count];
        NSNumber *nameNumbers = @(nameUnsignedIntNumbers);
        [countDictionary setObject:nameNumbers forKey:iceCreamName];
    }
    return countDictionary;
}

@end
