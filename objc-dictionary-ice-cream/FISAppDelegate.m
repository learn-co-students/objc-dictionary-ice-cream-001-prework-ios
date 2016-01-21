//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)icecream {

    NSDictionary *iceCreamPrefs = @ {
    
        @"Joe"      : @"Peanut Butter and Chocolate",
        @"Tim"      : @"Natural Vanilla"            ,
        @"Sophie"   : @"Mexican Chocolate"          ,
        @"Deniz"    : @"Natural Vanilla"            ,
        @"Tom"      : @"Mexican Chocolate"          ,
        @"Jim"      : @"Natural Vanilla"            ,
        @"Mark"     : @"Cookies 'n Cream"          };
    
    NSMutableArray *iceCreamPrefsMutable = [[NSMutableArray alloc] init];
       for (NSString *key in [iceCreamPrefs allKeys]) {
         if ([iceCreamPrefs[key] isEqualToString:icecream]) {
           [iceCreamPrefsMutable addObject:key];
         }
       }
    return iceCreamPrefsMutable;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {

   NSMutableDictionary *iceCreamByNameMutable = [[NSMutableDictionary alloc] init];
   
    for (NSString *value in [iceCreamByName allValues]) {
        
        NSUInteger countOfNames = [[self namesForIceCream: value] count];
        
        iceCreamByNameMutable[value] = @(countOfNames);
        
    }
    return iceCreamByNameMutable;
}

@end
