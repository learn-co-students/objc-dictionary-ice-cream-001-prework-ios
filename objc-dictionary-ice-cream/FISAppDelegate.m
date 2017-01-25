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
-(NSArray *)namesForIceCream:(NSString *)iceCream {
    NSDictionary *iceCreamPreferences = @{ @"Joe" : @"Peanut Butter and Chocolate",
        @"Tim" :@"Natural Vanilla",
        @"Sophie" : @"Mexican Chocolate",
        @"Deniz" : @"Natural Vanilla",
        @"Tom" : @"Mexican Chocolate",
        @"Jim" : @"Natural Vanilla",
        @"Mark" : @"Cookies 'n Cream" };
    NSMutableArray *namesOfPeopleWhoPreferThisIceCream = [[NSMutableArray alloc] init];
    for (NSString *name in iceCreamPreferences){
        if ( [iceCreamPreferences[name] isEqualToString:iceCream]){
            [namesOfPeopleWhoPreferThisIceCream addObject:name];
        }
    }
    
    
    return namesOfPeopleWhoPreferThisIceCream;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *iceCreamWithCount = [[NSMutableDictionary alloc] init];
    
    for (NSString *name in iceCreamByName) {
        NSArray *peopleWhoPreferIceCream = [self namesForIceCream:iceCreamByName[name] ];
        NSUInteger count = peopleWhoPreferIceCream.count;
        NSNumber *countNSNumber = @(count);
        NSLog(@"Hello, %@, there are %li who have similar ice cream preferences",name, count );
        if ( ![  [iceCreamWithCount allKeys] containsObject:iceCreamByName[name] ]) {
            iceCreamWithCount[ iceCreamByName[name] ] = countNSNumber;
        }
    }
    return iceCreamWithCount;
}

@end
