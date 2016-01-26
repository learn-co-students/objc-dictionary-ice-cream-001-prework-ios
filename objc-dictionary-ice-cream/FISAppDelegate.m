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
    NSDictionary *iceCreamByName = @{ @"Joe"      : @"Peanut Butter and Chocolate",
                                        @"Tim"      : @"Natural Vanilla",
                                        @"Sophie"   : @"Mexican Chocolate",
                                        @"Deniz"    : @"Natural Vanilla",
                                        @"Tom"      : @"Mexican Chocolate",
                                        @"Jim"      : @"Natural Vanilla",
                                        @"Mark"     : @"Cookies 'n Cream"   };
    NSMutableArray *names = [[NSMutableArray alloc]init];
    for (NSString *person in [iceCreamByName allKeys]) {
        if ([iceCreamByName[person] isEqualToString:iceCream]) {
            [names addObject:person];
        }
    }
    return [NSArray arrayWithArray:names];
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *countsOfIceCream = [[NSMutableDictionary alloc]init];
    for (NSString *person in iceCreamByName) {
        NSString *iceCream = iceCreamByName[person];
        NSArray *presentPeople = [self namesForIceCream:iceCream];
        countsOfIceCream[iceCream] = [NSNumber numberWithInteger:presentPeople.count];
    }
    return [NSDictionary dictionaryWithDictionary:countsOfIceCream];
}

@end
