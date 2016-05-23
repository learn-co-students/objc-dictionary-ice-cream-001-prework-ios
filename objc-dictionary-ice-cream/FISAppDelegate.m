//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream
{
      NSDictionary *iceCreamByName = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                                        @"Tim"    : @"Natural Vanilla"            ,
                                        @"Sophie" : @"Mexican Chocolate"          ,
                                        @"Deniz"  : @"Natural Vanilla"            ,
                                        @"Tom"    : @"Mexican Chocolate"          ,
                                        @"Jim"    : @"Natural Vanilla"            ,
                                        @"Mark"   : @"Cookies 'n Cream"          };
    
    
      return [iceCreamByName allKeysForObject:iceCream];
    
    }

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName
{
      NSMutableDictionary *countsOfIceCream = [[NSMutableDictionary alloc] init];
      NSArray *iceCreams = [iceCreamByName allValues];
      for (NSString *iceCream in iceCreams) {
            // Check if this ice cream is already in the counts dictionary
            if (![countsOfIceCream objectForKey:iceCream]) {
                  [countsOfIceCream setObject:@([self namesForIceCream:iceCream].count) forKey:iceCream];
                }
          }
      return countsOfIceCream;
    }

@end
