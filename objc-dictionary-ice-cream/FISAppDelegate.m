//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 Joe likes Peanut Butter and Chocolate
 
 Tim wants Natural Vanilla
 
 Sophie loves Mexican Chocolate
 
 Deniz only likes Natural Vanilla
 
 Tom will eat Mexican Chocolate
 
 Jim never answered so he's getting Natural Vanilla
 
 Mark — Cookies 'n Cream duh
 
 */

-(NSMutableArray*)namesForIceCream:(NSString*)iceCream;{
    NSDictionary *iceCreamByName = @{ @"Joe" : @"Peanut Butter and Chocolate",
                                        @"Tim" : @"Natural Vanilla",
                                        @"Sophie" : @"Mexican Chocolate",
                                        @"Deniz" : @"Natural Vanilla",
                                        @"Tom" : @"Mexican Chocolate",
                                        @"Jim" : @"Natural Vanilla",
                                        @"Mark" : @"Cookies 'n Cream"};
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    for (id key in iceCreamByName) {
        if ([iceCreamByName[key] isEqualToString:iceCream]){
            [result addObject:key];
        }
    }
    
    return result;}

-(NSDictionary*)countsOfIceCream:(NSDictionary*)iceCreamByName;{
    NSMutableDictionary *flavorsCounted = [[NSMutableDictionary alloc] init];
    
   
    
    for (id key in iceCreamByName){
        NSNumber *countOfLikes = @([[self namesForIceCream:iceCreamByName[key]] count]);
        [flavorsCounted setObject:countOfLikes forKey:iceCreamByName[key]];
        }
    
    return flavorsCounted;}

@end
