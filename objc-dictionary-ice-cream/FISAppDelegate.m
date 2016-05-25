//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}
-(NSArray *)namesForIceCream:(NSString *)iceCream{
    NSMutableArray *fanOfTheFlavor = [[NSMutableArray alloc] init];
    NSMutableDictionary *nameAndIceCream =
  @{    @"Joe"      :   @"Peanut Butter and Chocolate"  ,
        @"Tim"      :   @"Natural Vanilla"              ,
        @"Sophie"   :   @"Mexican Chocolate"            ,
        @"Deniz"    :   @"Natural Vanilla"              ,
        @"Tom"      :   @"Mexican Chocolate"            ,
        @"Jim"      :   @"Natural Vanilla"              ,
        @"Mark"     :   @"Cookies 'n Cream"            };
    
    if ([ [nameAndIceCream allKeys] containsObject:@"Peanut Butter and Chocolate"]) {
        [fanOfTheFlavor addObject: (@"%@", nameAndIceCream[@"Peanut Butter and Chocolate"])];
         return fanOfTheFlavor;
         }
         
    else if ([ [nameAndIceCream allKeys] containsObject:@"Mexican Chocolate"]) {
        [fanOfTheFlavor addObject: (@"%@", nameAndIceCream[@"Mexican Chocolate"])];
         return fanOfTheFlavor;
         }
    else if ([ [nameAndIceCream allKeys] containsObject:@"Natural Vanilla"]) {
        [fanOfTheFlavor addObject: (@"%@", nameAndIceCream[@"Natural Vanilla"])];
        return fanOfTheFlavor;
    }
    else if ([ [nameAndIceCream allKeys] containsObject:@"Cookies 'n Cream"]) {
        [fanOfTheFlavor addObject: (@"%@", nameAndIceCream[@"Cookies 'n Cream"])];
        return fanOfTheFlavor;
    }
    return nil;
}
-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    
    return nil;
}

@end
