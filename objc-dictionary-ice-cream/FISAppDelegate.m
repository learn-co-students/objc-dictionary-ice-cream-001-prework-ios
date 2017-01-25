//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream; {
    
    NSMutableArray *iceCreamNames = [[NSMutableArray alloc] init];
    
    NSDictionary *marksNotes = @{@"Joe"     : @"Peanut Butter and Chocolate",
                                 @"Tim"     : @"Natural Vanilla"            ,
                                 @"Sophie"  : @"Mexican Chocolate"          ,
                                 @"Deniz"   : @"Natural Vanilla"            ,
                                 @"Tom"     : @"Mexican Chocolate"          ,
                                 @"Jim"     : @"Natural Vanilla"            ,
                                 @"Mark"    : @"Cookies 'n Cream"          };
  
    for (NSString *key in [marksNotes allKeys]) {
        
        if ([marksNotes[key] isEqualToString:iceCream]) {
            
            [iceCreamNames addObject:key];
            
        }
    }
    return iceCreamNames;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName; {
    
    NSMutableDictionary *finalCount = [[NSMutableDictionary alloc ] init];
// Created an empty mutable dictionary to be returned at the end.
    
    for (NSString *key in iceCreamByName) {
        
        NSArray *counts = [self namesForIceCream:iceCreamByName[key]];
        
        NSString *name = iceCreamByName[key];
// From analyzing the Spec file, iceCreamByName dictionary contains all the people's names in the Keys.
        
        NSUInteger nameCount = [counts count];
// This converts the total amount of names in the array counts which was pulled by calling the previously defined method namesForIceCream which accepts the argument iceCreamByName at the key into an unsigned integer.
        
        NSNumber *nameNum = @(nameCount);
// Converted the NSUInteger into a NSNumber to ensure we can setObject: forKey: in the next step.
        
        [finalCount setObject:nameNum forKey:name];
// This matches the key-value pairs to the number of people who want each flavor with the flavor. For example, if 3 people requested Natural Vanilla, we'll get @3 : Natural Vanilla in the dicitonary.
        
    }
    return finalCount;
}
@end
