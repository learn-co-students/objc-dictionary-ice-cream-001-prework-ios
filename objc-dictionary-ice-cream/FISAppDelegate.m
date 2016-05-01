//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream{

    
    NSDictionary *marksNotes   = @{ @"Joe" : @"Peanut Butter and Chocolate",
                                    @"Tim" : @"Natural Vanilla",
                                    @"Sophie" : @"Mexican Chocolate",
                                    @"Deniz" : @"Natural Vanilla",
                                    @"Tom" : @"Mexican Chocolate",
                                    @"Jim" : @"Natural Vanilla",
                                    @"Mark" : @"Cookies 'n Cream",};
    
    NSArray *namesForIceCream = [marksNotes allKeysForObject:iceCream];
    return namesForIceCream;


    }

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    

    
    NSArray *vanilla = [self namesForIceCream:([NSString stringWithFormat:@"Natural Vanilla"])];
    NSArray *mexican = [self namesForIceCream:([NSString stringWithFormat:@"Mexican Chocolate"])];
    NSArray *peanutButter = [self namesForIceCream:([NSString stringWithFormat:@"Peanut Butter and Chocolate"])];
    NSArray *cookiesAndCream = [self namesForIceCream:([NSString stringWithFormat:@"Cookies 'n Cream"])];
    
    NSNumber *vanillaNumber = @(vanilla.count);
    NSNumber *mexicanNumber = @(mexican.count);
    NSNumber *peanutButterNumber = @(peanutButter.count);
    NSNumber *cookiesAndCreamNumber = @(cookiesAndCream.count);
    
    
    iceCreamByName = @{             @"Natural Vanilla" : vanillaNumber,
                                    @"Mexican Chocolate" : mexicanNumber,
                                    @"Peanut Butter and Chocolate" : peanutButterNumber,
                                    @"Cookies 'n Cream" : cookiesAndCreamNumber,
                                   
                                    };
    
    
    
    
    
    
    return iceCreamByName;
}

@end
