//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

//who wants this NSString *iceCream????? give me the list! (maybe an array??? -lists are alittle different... :-) )
- (NSArray *)namesForIceCream:(NSString *)iceCream {
    NSMutableArray *nameListForIceCream = [[NSMutableArray alloc] init];
    NSDictionary *iceCreamForeach = @{
        @"Joe": @"Peanut Butter and Chocolate",
        @"Tim": @"Natural Vanilla",
        @"Sophie":@"Mexican Chocolate",
        @"Deniz": @"Natural Vanilla",
        @"Tom": @"Mexican Chocolate",
        @"Jim": @"Natural Vanilla",
        @"Mark" :@"Cookies 'n Cream"
    };
    for (NSString *key in [iceCreamForeach allKeys]) {
        if ([iceCreamForeach[key] isEqualToString:iceCream]) {
            [nameListForIceCream addObject:key];
        }
    }
    return nameListForIceCream;
}


//see how many people want each ice cream flavor??? here is a mthod for that:
- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *mIceCreamByName = [[NSMutableDictionary alloc]init];
    NSUInteger howManyPeopleWantsThisIcecream = 0;
    for (NSString *key in [iceCreamByName allKeys]) {
        howManyPeopleWantsThisIcecream = [[self namesForIceCream:iceCreamByName[key]] count];
        mIceCreamByName[iceCreamByName[key]] = @(howManyPeopleWantsThisIcecream);
    }
    return mIceCreamByName;
}

@end
