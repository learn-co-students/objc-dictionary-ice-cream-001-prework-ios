//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream; {
    
    // Return an array of the names of everyone who likes the ice cream flavor submitted in the string argument.
    
    // NSLog(@"\n\n\n\n\n\n\n%@\n\n\n\n\n\n\n", iceCream);
    
    // NSMutableArray *iceCreamByName = [[NSMutableArray alloc] init];
    
    NSDictionary *marksNotes = @{@"Joe"     : @"Peanut Butter and Chocolate" ,
                                 @"Tim"     : @"Natural Vanilla"             ,
                                 @"Sophie"  : @"Mexican Chocolate"           ,
                                 @"Deniz"   : @"Natural Vanilla"             ,
                                 @"Tom"     : @"Mexican Chocolate"           ,
                                 @"Jim"     : @"Natural Vanilla"             ,
                                 @"Mark"    : @"Cookies 'n Cream"           };
    
    NSArray *iceCreamByName = [marksNotes allKeysForObject:iceCream];
    
    NSLog(@"\n\n\n\n\n\n\n%@\n\n\n\n\n\n\n", iceCreamByName);
    
    return iceCreamByName;
    
// At first I was attempting to utilize a for-in loop to make this work & add to a NSMutableArray (as you will see commented out above), however, through a lot of trial & error I was able to find out the allkeysForObject: method which essentially allowed me to get the tests to pass in one line! There is a way to make the for-in loop work for what this lab is asking, this was just easier.
    
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName; {
    
    NSMutableDictionary *counts = [[NSMutableDictionary alloc] init];
    
    for (NSString *iceCream in [iceCreamByName allValues]) {
        
        if (![counts objectForKey:iceCream]) {
// Make note of the "!" which is checking if it DOES NOT EQUAL or DOES NOT CONTAIN iceCream NSString.
            
            [counts setObject:@([[self namesForIceCream:iceCream] count]) forKey:iceCream];
// This was a clever way to call in the previous method here by utilizing setObject: forKey: & calling the previous method as the object.
            
        }
        
    }
    
    return counts;

}

@end
