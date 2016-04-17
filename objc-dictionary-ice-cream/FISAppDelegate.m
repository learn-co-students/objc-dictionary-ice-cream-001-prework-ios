//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream{
    NSDictionary *namesAndFlavor = @{@"Joe"     : @"Peanut Butter and Chocolate" ,
                                     @"Tim"    : @"Natural Vanilla" ,
                                     @"Sophie"  : @"Mexican Chocolate" ,
                                     @"Deniz"   : @"Natural Vanilla" ,
                                     @"Tom"     : @"Mexican Chocolate",
                                     @"Jim"     : @"Natural Vanilla" ,
                                     @"Mark"    : @"Cookies 'n Cream"};
    
    NSMutableArray *namesPerFlavor = [NSMutableArray new];
   
    
    for (NSString *key in [namesAndFlavor allKeys]) {
        if ([namesAndFlavor[key] isEqualToString:iceCream]) {
            [namesPerFlavor addObject:key];
        }
    }
    
    return [NSArray arrayWithArray:namesPerFlavor];
    
}


-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSMutableDictionary *numberOfPeople = [NSMutableDictionary new];
    
    for (NSString *key in iceCreamByName) {
        
        NSString *iceCreamName = iceCreamByName[key];
        NSArray *names = [self namesForIceCream:iceCreamName];
        
        numberOfPeople[iceCreamName] = [NSNumber numberWithInteger:names.count];
        
    }
    
    
    return [NSDictionary dictionaryWithDictionary:numberOfPeople];
}

@end
