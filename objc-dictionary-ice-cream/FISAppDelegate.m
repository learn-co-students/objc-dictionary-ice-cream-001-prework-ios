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

- (NSArray *)namesForIceCream:(NSString *)iceCream
{
    
    NSDictionary *iceCreamByName = @{@"Joe" : @"Peanut Butter and Chocolate",
                                      @"Tim" : @"Natural Vanilla",
                                      @"Sophie" : @"Mexican Chocolate",
                                      @"Deniz" : @"Natural Vanilla",
                                      @"Tom" : @"Mexican Chocolate",
                                      @"Jim" : @"Natural Vanilla",
                                      @"Mark" : @"Cookies 'n Cream"};
    
    NSMutableArray *peopleWhoWantThatIceCream = [[NSMutableArray alloc] init];
    
    for (NSString *key in iceCreamByName)
    {
        BOOL iceCreamMatch = [iceCreamByName[key] isEqualToString:iceCream];
        
        if(iceCreamMatch)
        {
            [peopleWhoWantThatIceCream addObject:key];
        }
    }
    
    return peopleWhoWantThatIceCream;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName
{
    
    NSMutableDictionary *iceCreamsByNumber = [@{} mutableCopy];
    
    for (NSString *key in iceCreamByName)
    {
        if ( ![[iceCreamsByNumber allKeys] containsObject:iceCreamByName[key]])
        {
            NSUInteger numberOfPeopleWhoLikeThatIceCreamInt = [[self namesForIceCream:iceCreamByName[key]] count];
            NSNumber *numberOfPeopleWhoLikeThatIceCream = @(numberOfPeopleWhoLikeThatIceCreamInt);
            [iceCreamsByNumber setObject:numberOfPeopleWhoLikeThatIceCream forKey:iceCreamByName[key]];
        }
    }
    
    return iceCreamsByNumber;
}

@end
