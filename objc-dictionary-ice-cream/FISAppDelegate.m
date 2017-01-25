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

- (NSArray*)namesForIceCream:(NSString*)iceCream {
    
    NSMutableArray *NamesOfFlavorPref = [[NSMutableArray alloc] init]; // the NSMutableArray NamesOfFlavorPref is created, empty and ready for use
    
    // use the "keys" to find the "values". // The NSDictionary "flavPref" is declared with keys and values representing each individuals flavor preference
    NSDictionary *flavPref = @{ @"Joe" : @"Peanut Butter and Chocolate",
                              @"Tim" : @"Natural Vanilla",
                              @"Sophie" : @"Mexican Chocolate",
                              @"Deniz" : @"Natural Vanilla",
                              @"Tom" : @"Mexican Chocolate",
                              @"Jim" : @"Natural Vanilla",
                              @"Mark" : @"Cookies 'n Cream"};
    
    for (NSString *key in [flavPref allKeys]) { // for loop // key is replaced by all keys in the NSDictionary "flavPref"
        if ([flavPref[key] isEqualToString:iceCream]) { // if the "flavPref" value (the ice cream flavor) is equal to the NSString "iceCream" (only one string can be assesed at a time of all of the string/ice cream flavors that corresponds person's who prefers it)
            [NamesOfFlavorPref addObject:key]; // then add the name/object to the NSMutableArray "NamesOfFlavorPref"
        }
    }
    
    return NamesOfFlavorPref; // then return the full list "NamesOfFlavorPref"
}

- (NSDictionary*)countsOfIceCream:(NSDictionary*)iceCreamByName{ // "countsOfIceCream" is the method, "iceCreamByName" is the parameter/argument that gets passed through "counsOfIceCream" and returns an NSDictionary
    
    // The NSMutableDictionary "helado" is filled with the flavors of icecream and base case of 0 count
   NSMutableDictionary *helado =[ @{@"Peanut Butter and Chocolate":@0,
                                    @"Natural Vanilla":@0,
                                    @"Mexican Chocolate":@0,
                                    @"Cookies 'n Cream":@0} mutableCopy];
    
    for (NSString *key in [helado allKeys]){ // for loop // creates NSString called "key" that contains one of the each of the 4 values of flavors in the NSMutableDictionary "helado" at a time.
        
        NSArray *tempArray = [self namesForIceCream:key]; // creates a temporary array that holds the names of the people who like a particular icecream
        NSUInteger flavorCount = [tempArray count]; // the NSUInteger "flavorCount" is set equal to the count of NSArray "tempArray" (telling you the number of people/names who like it)
        NSNumber *countNum = @(flavorCount); //typecasting // the NSNumber "countNum" is declared and set equal to "flavorCount"
        
        helado[key] = countNum; // the NSMutableDictionary "helado"'s value for the current key/flavor of icecream is set equal to the NSNumber "countNum" (replaces all the 0's with the number of people who like each particular flavor)
    }
    
    return helado; // the NSMutableDictionary "helado" is returned with the number of people each flavor is favored by
}

@end
