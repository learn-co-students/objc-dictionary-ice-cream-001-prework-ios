//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream: (NSString*)iceCream {
    
    
    NSDictionary *iceCreamByName = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                                      @"Tim"    : @"Natural Vanilla"            ,
                                      @"Sophie" : @"Mexican Chocolate"          ,
                                      @"Deniz"  : @"Natural Vanilla"            ,
                                      @"Tom"    : @"Mexican Chocolate"          ,
                                      @"Jim"    : @"Natural Vanilla"            ,
                                      @"Mark"   : @"Cookies 'n Cream"          };
    
    NSMutableArray *namesAndIceCream = [[NSMutableArray alloc] init];
    
    for (NSString *key in [iceCreamByName allKeys]) {
        
        if ([iceCreamByName[key] isEqualToString:iceCream]) {
            
            [namesAndIceCream addObject: key];
        }
        
    }
    
    return namesAndIceCream;
}

- (NSDictionary *)countsOfIceCream: (NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *countsOfIceCream = [[NSMutableDictionary alloc] init];
    NSMutableArray *keyEqualsIceCream = [[NSMutableArray alloc] init];
    
    for (NSString *key in [iceCreamByName allKeys]) {
        
        NSString *iceCream = iceCreamByName[key];
        
        if ([iceCreamByName[key] isEqualToString:iceCream]) {
            
            [keyEqualsIceCream addObject: key];
            NSArray *currentNames = [self namesForIceCream:iceCream];
            countsOfIceCream[iceCream] = [NSNumber numberWithInteger:currentNames.count];
        }
        
    }
    
    return countsOfIceCream;

}

@end
