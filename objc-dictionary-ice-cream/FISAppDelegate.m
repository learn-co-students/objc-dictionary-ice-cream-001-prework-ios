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

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSDictionary *namesAndIceCream = @{@"Joe"    : @"Peanut Butter and Chocolate",
                                       @"Tim"    : @"Natural Vanilla",
                                       @"Sophie" : @"Mexican Chocolate",
                                       @"Deniz"  : @"Natural Vanilla",
                                       @"Tom"    : @"Mexican Chocolate",
                                       @"Jim"    : @"Natural Vanilla",
                                       @"Mark"   : @"Cookies 'n Cream", };
    
    
    NSMutableArray *people = [[NSMutableArray alloc] init];
    
    for (NSString *key in [namesAndIceCream allKeys]) {
        
        if ([namesAndIceCream [key] isEqualToString:iceCream]) {
            
            [people addObject:key];
        }
    }
                                       
    
    
    return [people mutableCopy];
}



- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *iceCreamcount = [[NSMutableDictionary alloc] init];
    
    for (NSString *key in iceCreamByName) {
        
        NSString *eachIceCream = iceCreamByName[key];
        
        NSArray *names = [self namesForIceCream:eachIceCream];
        
        NSNumber *iceCreamCountInt = @(names.count);
        
        iceCreamcount[eachIceCream] = iceCreamCountInt;
        
        
    }
    
    return iceCreamcount;
    
    
    
    
}
@end
