//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSDictionary *preferredIceCream = @{ @"Joe"     :  @"Peanut Butter and Chocolate",
                                         @"Tim"     :  @"Natural Vanilla"   ,
                                         @"Sophie"  :  @"Mexican Chocolate" ,
                                         @"Deniz"   :  @"Natural Vanilla"   ,
                                         @"Tom"     :  @"Mexican Chocolate" ,
                                         @"Jim"     :  @"Natural Vanilla"   ,
                                         @"Mark"    :  @"Cookies 'n Cream" };
    
    
    NSMutableArray *whoLikesWhichFlavor = [[NSMutableArray alloc] init];
    
    for (NSString *names in [preferredIceCream allKeys]) {
        if ([preferredIceCream[names] isEqualToString:iceCream]) {
            [whoLikesWhichFlavor addObject:names];
        }
    }

    return whoLikesWhichFlavor;
    
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *miceCreamByName = [[NSMutableDictionary alloc] init];
    
    for (NSString *iceCreamFlavor in [iceCreamByName allValues]) {
        NSUInteger count = [[self namesForIceCream:iceCreamFlavor] count];
        miceCreamByName[iceCreamFlavor]= @(count);
    }
    
    return miceCreamByName;
}



@end
