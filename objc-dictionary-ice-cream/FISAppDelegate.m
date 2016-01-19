//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


-(NSArray *)namesForIceCream:(NSString *)iceCream {
    NSDictionary *iceCreamPreferences = @{ @"Joe": @"Peanut Butter and Chocolate",
                                          @"Tim": @"Natural Vanilla",
                                           @"Sophie": @"Mexican Chocolate",
                                           @"Deniz": @"Natural Vanilla",
                                           @"Tom": @"Mexican Chocolate",
                                           @"Jim": @"Natural Vanilla",
                                           @"Mark": @"Cookies 'n Cream"
                                           };
    
    NSMutableArray *fans = [[NSMutableArray alloc] init];
    
    for (NSString *name in [iceCreamPreferences allKeys]) {
        if ([iceCreamPreferences[name] isEqualToString:iceCream]) {
            [fans addObject:name];
        }
    }
    
    return fans;
    
}
    
-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *iceCreamByNameMutable = [[NSMutableDictionary alloc] init];
    
    
    for (NSString *flavor in [iceCreamByName allValues]) {
        
        NSUInteger count = [[self namesForIceCream:flavor] count];
        iceCreamByNameMutable[flavor] = @(count);
        
    }
    
    return iceCreamByNameMutable;
    
}


@end
