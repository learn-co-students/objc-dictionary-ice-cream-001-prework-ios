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

    NSDictionary *namesIceCream = @{@"Joe"      : @"Peanut Butter and Chocolate",
                                    @"Tim"      : @"Natural Vanilla",
                                    @"Sophie"   : @"Mexican Chocolate",
                                    @"Deniz"    : @"Natural Vanilla",
                                    @"Tom"      : @"Mexican Chocolate",
                                    @"Jim"      : @"Natural Vanilla",
                                    @"Mark"     : @"Cookies 'n Cream"
                                    };

    NSMutableArray *names = [[NSMutableArray alloc]init];

    for (NSString *key in namesIceCream) {
            if ([namesIceCream[key] isEqualToString:iceCream]) {
                    [names addObject:key];
                }
        }

    return names;
};

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{

    NSMutableDictionary *countsByIceCream = [ @{} mutableCopy ];
    
    
    for (NSString *key in iceCreamByName) {
            NSUInteger count = [[self namesForIceCream:iceCreamByName[key]] count];
            NSNumber *countNum = @(count);
            countsByIceCream[iceCreamByName[key]] = countNum;
           // mJenny[@"last_name"] = @"Curran";
        };
    
    
    
    return countsByIceCream;
    };

@end
