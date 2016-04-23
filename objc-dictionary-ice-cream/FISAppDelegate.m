//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

// Objectives:
// 1. Practice creating and using a dictionary.
// 2. Write methods to interpret the information in a dictionary.
// 3. Practice converting to a mutable dictionary and modifying it programmatically.

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSMutableArray *namesOfPeople = [[NSMutableArray alloc] init];
    NSDictionary *marksNotes = @{ @"Joe" : @"Peanut Butter and Chocolate",
                                  @"Tim" : @"Natural Vanilla",
                                  @"Sophie" : @"Mexican Chocolate",
                                  @"Deniz" : @"Natural Vanilla",
                                  @"Tom" : @"Mexican Chocolate",
                                  @"Jim" : @"Natural Vanilla",
                                  @"Mark" : @"Cookies 'n Cream"};
    
    for (NSString *keys in marksNotes) {
        if ([marksNotes[keys] isEqualToString: iceCream]) {
            [namesOfPeople addObject:keys];
        }
    }
    return namesOfPeople;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
   
    NSMutableDictionary *returnDictionary = [[NSMutableDictionary alloc] init];
    NSArray *nameArray = [iceCreamByName allValues];
    
    for (NSString *nameIndex in nameArray) {
        if (![returnDictionary objectForKey:nameIndex]) {
            NSUInteger counterInt = 0;
            for (NSString *name in iceCreamByName) {
                if ([iceCreamByName[name] isEqualToString:nameIndex]) {
                    counterInt++;
                }
            }
            NSNumber *counterNumber = @(counterInt);
            returnDictionary[nameIndex] = counterNumber;
        }
    }
    return returnDictionary;
    
    
    /*
    // Solutions:
    NSMutableDictionary *countsOfIceCream = [[NSMutableDictionary alloc] init];
    for (NSString *key in iceCreamByName) {
        NSString *iceCream = iceCreamByName[key];
        NSArray *currentNames = [self namesForIceCream:iceCream];
        countsOfIceCream[iceCream] = [NSNumber numberWithInteger:currentNames.count];
    }
    return [NSDictionary dictionaryWithDictionary:countsOfIceCream];
    */
    
}

@end

