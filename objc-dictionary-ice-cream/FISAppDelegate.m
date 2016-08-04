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
    NSDictionary *iceCreamParty = @{ @"Joe"     :   @"Peanut Butter and Chocolate"  ,
                                     @"Tim"     :   @"Natural Vanilla"              ,
                                     @"Sophie"  :   @"Mexican Chocolate"            ,
                                     @"Deniz"   :   @"Natural Vanilla"              ,
                                     @"Tom"     :   @"Mexican Chocolate"            ,
                                     @"Jim"     :   @"Natural Vanilla"              ,
                                     @"Mark"    :   @"Cookies 'n Cream"            };
    
    NSMutableArray *peopleWhoLikesThisFlavor = [[NSMutableArray alloc] init];
    
    for (NSString *nameOfPerson in [iceCreamParty allKeys]) {
        if ([iceCream isEqualToString:iceCreamParty[nameOfPerson]]) {
            [peopleWhoLikesThisFlavor addObject:nameOfPerson];
        }
    }
    return peopleWhoLikesThisFlavor;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *flavorPreferences = [[NSMutableDictionary alloc] init];
    
    for (NSString *flavorName in [iceCreamByName allValues]) {
        NSArray *nameOfFlavors = [self namesForIceCream:flavorName];
        
        NSUInteger flavorCount = [nameOfFlavors count];
        flavorPreferences[flavorName] = @(flavorCount);
    }
    return flavorPreferences;
}

@end
