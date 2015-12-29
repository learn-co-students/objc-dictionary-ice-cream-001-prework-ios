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
    NSDictionary *marksNotes = @{@"Joe"     : @"Peanut Butter and Chocolate",
                                 @"Tim"     : @"Natural Vanilla"            ,
                                 @"Sophie"  : @"Mexican Chocolate"          ,
                                 @"Deniz"   : @"Natural Vanilla"            ,
                                 @"Tom"     : @"Mexican Chocolate"          ,
                                 @"Jim"     : @"Natural Vanilla"            ,
                                 @"Mark"    : @"Cookies 'n Cream"           };
    
    NSArray *names = [marksNotes allKeysForObject:iceCream];
    
    return names;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *iceCreamCount = [@{} mutableCopy];
    
    for (NSString *iceCream in [iceCreamByName allValues]) {
        NSUInteger numPeople = [[self namesForIceCream:iceCream] count];
        iceCreamCount[iceCream] = @(numPeople);
    }
    return iceCreamCount;
}

@end
