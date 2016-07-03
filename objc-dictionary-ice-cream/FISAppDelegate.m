//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

//Given an ice cream flavor, return an array of the people who like that ice cream. Person-to-ice-cream mapping is hard-coded.
- (NSArray *)namesForIceCream:(NSString *)iceCream{
    
    NSDictionary * preferences = @{@"Joe"       : @"Peanut Butter and Chocolate",
                                   @"Tim"       : @"Natural Vanilla",
                                   @"Sophie"    : @"Mexican Chocolate",
                                   @"Deniz"     : @"Natural Vanilla",
                                   @"Tom"       : @"Mexican Chocolate",
                                   @"Jim"       : @"Natural Vanilla",
                                   @"Mark"      : @"Cookies 'n Cream"};
    
    NSMutableArray *names = [[NSMutableArray alloc] init];
    
    for (NSString *name in [preferences allKeys]){
        if([preferences[name] isEqualToString:iceCream]){
            [names addObject:name];
        }
    }
    
    return names;
}


//Given a mapping of ice cream preferences by name, return a mapping of ice cream flavors to count of people who prefer
//that flavor.
//Currently, the hard-coded preferences from namesForIceCream will override whatever input is given via iceCreamByName.
- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSMutableDictionary *counts = [[NSMutableDictionary alloc] init];
    
    for (NSString *flavor in [iceCreamByName allValues]){
        NSArray *names = [self namesForIceCream:flavor];
        NSUInteger count = [names count];
        counts[flavor] = @(count);
    }
    
    return counts;
}

@end
