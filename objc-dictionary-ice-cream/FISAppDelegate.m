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
    NSDictionary *namesAndIceCream = @{ @"Joe":@"Peanut Butter and Chocolate",
                                        @"Tim":@"Natural Vanilla",
                                        @"Sophie":@"Mexican Chocolate",
                                        @"Deniz":@"Natural Vanilla",
                                        @"Tom":@"Mexican Chocolate",
                                        @"Jim":@"Natural Vanilla",
                                        @"Mark":@"Cookies 'n Cream"};
    NSMutableArray *namesForIceCreamFlavor = [[NSMutableArray alloc] init];
    for (NSString *key in [namesAndIceCream allKeys]) {
        if ([namesAndIceCream[key] isEqualToString:iceCream]) {
            [namesForIceCreamFlavor addObject:key];
        }
    }
    return namesForIceCreamFlavor;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSArray *namesOfIceCream = @[@"Peanut Butter and Chocolate",
                                 @"Natural Vanilla",
                                 @"Mexican Chocolate",
                                 @"Cookies 'n Cream"];
    NSMutableDictionary *countsPerIceCreamFlavor = [[NSMutableDictionary alloc]init];
    for (NSString *iceCreamFlavor in namesOfIceCream) {
        NSNumber *countsForIceCreamFlavor = @([[self namesForIceCream:iceCreamFlavor] count]);
        countsPerIceCreamFlavor[iceCreamFlavor] = countsForIceCreamFlavor;
    }
    return countsPerIceCreamFlavor;
}

@end
