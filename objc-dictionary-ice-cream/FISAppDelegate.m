//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    
    NSDictionary *everyonesFavoirteIceCream = @{@"Joe" : @"Peanut Butter and Chocolate",
                                                @"Tim" : @"Natural Vanilla",
                                                @"Sophie" : @"Mexican Chocolate",
                                                @"Deniz" : @"Natural Vanilla",
                                                @"Tom" : @"Mexican Chocolate",
                                                @"Jim" : @"Natural Vanilla",
                                                @"Mark" : @"Cookies 'n Cream"};
    

    [self countsOfIceCream:everyonesFavoirteIceCream];
    
    
    
    
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream {
    NSDictionary *everyonesFavoirteIceCream = @{@"Joe" : @"Peanut Butter and Chocolate",
                                                @"Tim" : @"Natural Vanilla",
                                                @"Sophie" : @"Mexican Chocolate",
                                                @"Deniz" : @"Natural Vanilla",
                                                @"Tom" : @"Mexican Chocolate",
                                                @"Jim" : @"Natural Vanilla",
                                                @"Mark" : @"Cookies 'n Cream"};
    
    NSMutableArray *names = [[NSMutableArray alloc]init];
    
    for (NSString *key in everyonesFavoirteIceCream) {
        if ([everyonesFavoirteIceCream[key] isEqualToString:iceCream] ) {
            [names addObject:key];
        }
    }
    NSLog(@"names: %@", names);
    
    return names;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *mIceCreamByName = [[NSMutableDictionary alloc]init];
    for (NSString *key in iceCreamByName) {
        NSInteger i = [[self namesForIceCream:iceCreamByName[key] ] count];
        NSNumber *numberOfKidsWhoWantGivenIceCream = @(i);
        NSLog(@"int: %li, NSNum: %@, IceCream: %@", i, numberOfKidsWhoWantGivenIceCream, iceCreamByName[key]);
        if (![[mIceCreamByName allKeys]containsObject:iceCreamByName[key]]) {
            mIceCreamByName[iceCreamByName[key]] = numberOfKidsWhoWantGivenIceCream;
        }
        NSLog(@"NSDictionary: %@", mIceCreamByName);

    }
    NSLog(@"NSDictionary: %@", mIceCreamByName);
    
    return mIceCreamByName;
    
    
}

@end
