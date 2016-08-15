//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSDictionary *iceCreamByName = @{
        @"Joe" : @"Peanut Butter and Chocolate",
        @"Tim" : @"Natural Vanilla",
        @"Sophie" : @"Mexican Chocolate",
        @"Deniz" : @"Natural Vanilla",
        @"Tom" : @"Mexican Chocolate",
        @"Jim" : @"Natural Vanilla",
        @"Mark" : @"Cookies 'n Cream"
    };
    
    NSArray *namesForIceCreamResults = @[];
    NSString *iceCream = @"Peanut Butter and Chocolate";
    //NSString *iceCream = @"Natural Vanilla";
    //NSString *iceCream = @"Mexican Chocolate";
    //NSString *iceCream = @"Cookies 'n Cream";
    namesForIceCreamResults = [self namesForIceCream:iceCream];
    NSLog(@"namesForIceCream: %@", namesForIceCreamResults);
    
    NSDictionary *countsOfIceCreamResults = [self countsOfIceCream:iceCreamByName];
    NSLog(@"countsOfIceCream: %@", countsOfIceCreamResults);
    
    return YES;
}

- (NSArray *) namesForIceCream: (NSString *)iceCream{
    
    NSDictionary *preferredIceCream = @{
    @"Joe" : @"Peanut Butter and Chocolate",
    @"Tim" : @"Natural Vanilla",
    @"Sophie" : @"Mexican Chocolate",
    @"Deniz" : @"Natural Vanilla",
    @"Tom" : @"Mexican Chocolate",
    @"Jim" : @"Natural Vanilla",
    @"Mark" : @"Cookies 'n Cream"
    };
    
    // add the items to a dictionay and then return keys as an array
    NSMutableDictionary *resultsDict = [NSMutableDictionary dictionary];
    
    for (NSString *key in [preferredIceCream allKeys]) {
        if(preferredIceCream[key] == iceCream){
            resultsDict[key] = @"";
        };
    }
    
    NSArray *arrayForTest = [resultsDict allKeys];
    return arrayForTest;
}

- (NSDictionary *) countsOfIceCream: (NSDictionary *) iceCreamByName{
    
    // create a dictionary where the values of iceCreamName are the keys of iceCreamLabel
    NSMutableDictionary *iceCreamByLabel = [NSMutableDictionary dictionary];
    for (NSString *key in [iceCreamByName allKeys]) {
        iceCreamByLabel[iceCreamByName[key]] = @"";
    }

    NSArray *iceCreamLabelKeys = [iceCreamByLabel allKeys];
    
    // go through iceCreamLabelKeys and count the matches in iceCreamByName values. Place the count in iceCreamByLabel
    for (NSUInteger i = 0; i < [iceCreamLabelKeys count]; i++){
        NSInteger nameCount = 0;
        NSString *iceCreamLabel = iceCreamLabelKeys[i];
        for (NSString *iceCreamByNameKey in [iceCreamByName allKeys]){
            NSString *iceCreamName = iceCreamByName[iceCreamByNameKey];
            if([iceCreamName isEqualToString: iceCreamLabel]){
               nameCount++;
            }
        }
        NSNumber *nameCountNumber = @(nameCount);
        iceCreamByLabel[iceCreamLabel] = nameCountNumber;
    }
    return iceCreamByLabel;
}

@end
