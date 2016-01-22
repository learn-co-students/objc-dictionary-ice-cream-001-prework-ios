//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}
-(NSArray *)namesForIceCream:(NSString *)iceCream{
    NSDictionary *flavors = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                               @"Tim"    : @"Natural Vanilla"            ,
                               @"Sophie" : @"Mexican Chocolate"          ,
                               @"Deniz"  : @"Natural Vanilla"            ,
                               @"Tom"    : @"Mexican Chocolate"          ,
                               @"Jim"    : @"Natural Vanilla"            ,
                               @"Mark"   : @"Cookies 'n Cream"          };
    
    NSMutableArray *personWithFlavor = [[NSMutableArray alloc] init];
    
    for (NSString *name in flavors) {
        
        if ([flavors[name] isEqualToString:iceCream]) {
            [personWithFlavor addObject:name];
        }
    }
    NSLog(@"%@", personWithFlavor);
    return personWithFlavor;
};

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSMutableDictionary *iceCreams = [[NSMutableDictionary alloc] init];
    
    for (NSString *flavor in [iceCreamByName allValues]) {
        //OR- NSString *names in [iceCreamByValue allKeys])
        //NSString *flavor = iceCreamByName[names];
        
        NSUInteger countofkeyNames = [[self namesForIceCream: flavor] count];
        //[self namesForIceCream: flavor] is an array
        
        NSNumber *nameNumber = @(countofkeyNames);
        iceCreams[flavor] = nameNumber;
        
       // OR- iceCreams[flavor] = @(countOfkeyNames);
        
    }
    return iceCreams;
};
/**
 
 * Write your custom method bodies here.
 
 */

@end
