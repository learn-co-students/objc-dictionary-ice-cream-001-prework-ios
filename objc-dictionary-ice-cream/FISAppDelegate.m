//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray*)namesForIceCream:(NSString *)iceCream; {
    NSDictionary *iceCreamFlavors=@{@"Joe" : @"Peanut Butter and Chocolate", @"Tim" : @"Natural Vanilla", @"Sophie" : @"Mexican Chocolate", @"Deniz" : @"Natural Vanilla", @"Tom" : @"Mexican Chocolate", @"Jim" : @"Natural Vanilla", @"Mark" : @"Cookies 'n Cream"};
    NSMutableArray *arrayOfNames=[[NSMutableArray alloc]init];
    for (NSString *people in [iceCreamFlavors allKeys]) {
        if([iceCreamFlavors[people] isEqualToString:iceCream]){
            [arrayOfNames addObject:people];
        }
    }
    return arrayOfNames;

}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableArray *flavors = [[NSMutableArray alloc] init];
    NSMutableDictionary *number = [[NSMutableDictionary alloc] init];
    for (NSString *person in [iceCreamByName allKeys]) {
        [flavors removeObjectIdenticalTo:iceCreamByName[person]];
        [flavors addObject:iceCreamByName[person]];
    }
    
    for (NSString *differentFlavors in flavors) {
        NSUInteger numberOfPeople = [[self namesForIceCream:differentFlavors] count];
        NSNumber *nsNumberOfPeople = @(numberOfPeople);
        number[differentFlavors] = nsNumberOfPeople;
    }
    
    return number;
}
/**
 
 * Write your custom method bodies here.
 
 */

@end
