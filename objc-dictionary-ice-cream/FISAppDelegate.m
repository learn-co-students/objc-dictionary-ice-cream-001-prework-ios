//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream{
    NSDictionary *nameAndIceCream =
  @{    @"Joe"      :   @"Peanut Butter and Chocolate"  ,
        @"Tim"      :   @"Natural Vanilla"              ,
        @"Sophie"   :   @"Mexican Chocolate"            ,
        @"Deniz"    :   @"Natural Vanilla"              ,
        @"Tom"      :   @"Mexican Chocolate"            ,
        @"Jim"      :   @"Natural Vanilla"              ,
        @"Mark"     :   @"Cookies 'n Cream"            };
    NSMutableArray *fanOfTheFlavor = [[NSMutableArray alloc] init];
        for (NSString *name in nameAndIceCream) {
        fanOfTheFlavor = [nameAndIceCream allKeysForObject: iceCream];
    }
        return fanOfTheFlavor;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    NSMutableDictionary *countsOfIceCream = [[NSMutableDictionary alloc] init];
    for (NSString *key in iceCreamByName){
        NSString *iceCream = iceCreamByName[key];
        //using the method we created before to separate the dictionary and give us somehting that is countable.
        NSArray *names = [self namesForIceCream:iceCream];
        countsOfIceCream[iceCream] = [NSNumber numberWithInteger:names.count];
    }
    return [NSDictionary dictionaryWithDictionary: countsOfIceCream];
}


@end
