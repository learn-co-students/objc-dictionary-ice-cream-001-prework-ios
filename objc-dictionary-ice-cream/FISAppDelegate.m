//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSDictionary *namesAndIceCreamPref = @{@"Joe" : @"Peanut Butter and Chocolate",
                                           @"Tim" : @"Natural Vanilla",
                                           @"Sophie" : @"Mexican Chocolate",
                                           @"Deniz" : @"Natural Vanilla",
                                           @"Tom" : @"Mexican Chocolate",
                                           @"Jim" : @"Natural Vanilla",
                                           @"Mark" : @"Cookies 'n Cream"};
    [self countsOfIceCream:namesAndIceCreamPref];
    
    
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSDictionary *namesAndIceCreamPref = @{@"Joe" : @"Peanut Butter and Chocolate",
                                           @"Tim" : @"Natural Vanilla",
                                           @"Sophie" : @"Mexican Chocolate",
                                           @"Deniz" : @"Natural Vanilla",
                                           @"Tom" : @"Mexican Chocolate",
                                           @"Jim" : @"Natural Vanilla",
                                           @"Mark" : @"Cookies 'n Cream"};
    
    NSMutableArray *namesWithPref = [[NSMutableArray alloc] init];
    
    for (NSString *name in namesAndIceCreamPref) {
        
        if ([namesAndIceCreamPref[name] isEqualToString:iceCream]) {
            
            [namesWithPref addObject:name];
        }
    }
    
    return namesWithPref;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *iceCreamNameCounts = [@{} mutableCopy];
    
    for (NSString *iceCreamFlavor in [iceCreamByName allValues]) {
        
        if (!iceCreamNameCounts[iceCreamFlavor]) {
            
            iceCreamNameCounts[iceCreamFlavor] = @([[self namesForIceCream:iceCreamFlavor] count]);
        }
    }
    
    return iceCreamNameCounts;
}

@end
