//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSString *testFlavor = @"Mexican Chocolate";
    [self namesForIceCream:testFlavor];
    
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSDictionary *iceCreamByName = @{
                        @"Joe"    : @"Peanut Butter and Chocolate",
                        @"Tim"    : @"Natural Vanilla"            ,
                        @"Sophie" : @"Mexican Chocolate"          ,
                        @"Deniz"  : @"Natural Vanilla"            ,
                        @"Tom"    : @"Mexican Chocolate"          ,
                        @"Jim"    : @"Natural Vanilla"            ,
                        @"Mark"   : @"Cookies 'n Cream"
                        };
    
    NSMutableArray *iceCreamPeople = [[NSMutableArray alloc] init];

    for (NSString *key in iceCreamByName) {
        if ([iceCreamByName[key] isEqualToString:iceCream]) {
            [iceCreamPeople addObject:key];
        }
    }
    NSLog(@"flavor: %@ people: %@", iceCream, iceCreamPeople); // test it!
    return iceCreamPeople;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *inventory = [[NSMutableDictionary alloc] init];
    NSSet *allFlavors = [NSSet setWithArray:[iceCreamByName allValues]];
    
    for (NSString *flavor in allFlavors) {
        inventory[flavor] = @([[self namesForIceCream:flavor] count]);
    }
    
    return inventory;
}

@end
