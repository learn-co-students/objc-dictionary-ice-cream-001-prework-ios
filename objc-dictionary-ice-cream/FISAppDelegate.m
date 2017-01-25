//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSMutableArray *mFlavors = [[NSMutableArray alloc] init];
    
    NSDictionary *flavors = @{@"Joe"    :     @"Peanut Butter and Chocolate",
                              @"Tim"    :     @"Natural Vanilla"            ,
                              @"Sophie" :     @"Mexican Chocolate"          ,
                              @"Deniz"  :     @"Natural Vanilla"            ,
                              @"Tom"    :     @"Mexican Chocolate"          ,
                              @"Jim"    :     @"Natural Vanilla"            ,
                              @"Mark"   :     @"Cookies 'n Cream"}          ;
//Dictionary of Mark's notes regarding who likes what flavor of ice cream.
    
    for (NSString *key in [flavors allKeys]) {
//Looking to find out people who share common flavor preference by utilizing this loop to scan all the keys.
        
        if ([flavors[key] isEqualToString:iceCream]) {
            [mFlavors addObject:key];
//If the person's name is equal to the flavor of Ice Cream, add the Name to the empty NSMutableArray mFlavors.
            
        }
    }
     return mFlavors;
    }
    
- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *count = [[NSMutableDictionary alloc] init];
//While I originally created a new dictionary, creating an empty mutable one was easier since we are defining the method which returns and accepts Dictionary arguments.
    
    for (NSString *key in iceCreamByName) {
        
        NSInteger i = [[self namesForIceCream:iceCreamByName[key] ] count];
        NSNumber *finalCount = @(i);
//Setting index to equal the number of names of ice cream by comparing the array namesForIceCream to dictionary's iceCreamByName keys & converting the NSInteger into a NSNumber.
        
        if (![[count allKeys] containsObject:iceCreamByName[key]]) {
            count[iceCreamByName[key]] = finalCount;
//If any one of the ice cream names contain a key from iceCreamByName, the number of people that like that flavor will equal the name of that ice cream.
            
        }
    }
    return count;
}


@end
