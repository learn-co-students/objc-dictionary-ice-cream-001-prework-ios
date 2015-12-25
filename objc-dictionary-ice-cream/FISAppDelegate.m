//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


-(NSArray*)namesForIceCream:(NSString*)iceCream {
    NSMutableArray *names = [[NSMutableArray alloc] init];
    
    NSDictionary *iceCreamByName = @{
                                     @"Joe"     : @"Peanut Butter and Chocolate" ,
                                     @"Tim"     : @"Natural Vanilla"             ,
                                     @"Sophie"  : @"Mexican Chocolate"        ,
                                     @"Deniz"   : @"Natural Vanilla"           ,
                                     @"Tom"     : @"Mexican Chocolate"           ,
                                     @"Jim"     : @"Natural Vanilla"             ,
                                     @"Mark"    : @"Cookies 'n Cream"           };
    
    for (NSString *key in iceCreamByName) {
        if ([iceCreamByName[key] isEqualToString:iceCream]) {
            [names addObject:key];
        }
    }
    
    return names;
}

-(NSDictionary*)countsOfIceCream:(NSDictionary*)iceCreamByName {
    NSMutableDictionary *countsByIceCream = [[NSMutableDictionary alloc] init];
    
    for (NSString *name in iceCreamByName) {
        NSString *flavor = iceCreamByName[name];
        
        if (countsByIceCream[flavor]) {
            countsByIceCream[flavor] = @([countsByIceCream[flavor] integerValue] + 1);
        } else {
            countsByIceCream[flavor] = @1;
        }
    }
    
    return countsByIceCream;
}

@end
