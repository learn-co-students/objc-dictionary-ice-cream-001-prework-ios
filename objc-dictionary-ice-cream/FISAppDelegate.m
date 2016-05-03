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

- (NSArray *)namesForIceCream: (NSString *)iceCream {
    
    NSArray *favoriteIceCreams = [NSArray array];
    
    
    NSDictionary *iceCreamsDict = @{@"Joe" : @"Peanut Butter and Chocolate",
                                    @"Tim" : @"Natural Vanilla",
                                    @"Sophie" : @"Mexican Chocolate",
                                    @"Deniz" : @"Natural Vanilla",
                                    @"Tom" : @"Mexican Chocolate",
                                    @"Jim" : @"Natural Vanilla",
                                    @"Mark" : @"Cookies 'n Cream"};
    
    
    
    for (NSDictionary *value in [iceCreamsDict allValues]) {
        
        if ([value isEqual:iceCream]) {
            favoriteIceCreams = [iceCreamsDict allKeysForObject:value];
        }
        
    }
    
    return favoriteIceCreams;
    
}

- (NSDictionary *)countsOfIceCream: (NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    
    for (NSString *key in [iceCreamByName allValues]) {
        
        [mutableDict addEntriesFromDictionary:iceCreamByName];
        
        NSArray *oldKeys = [iceCreamByName allKeys];
        
        NSArray *keys = [self namesForIceCream:key];
        NSUInteger keyCount = [keys count];
        NSNumber *keyCountString = [NSNumber numberWithInteger:keyCount];
        
        [mutableDict setObject:keyCountString forKey:key];
        [mutableDict removeObjectsForKeys:oldKeys];
        
    }
    
    return mutableDict;
}


@end
