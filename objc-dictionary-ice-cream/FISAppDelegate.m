//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray*) namesForIceCream:(NSString *)iceCream{
    NSDictionary* _dic = @{@"Joe":@"Peanut Butter and Chocolate",
                           @"Tim":@"Natural Vanilla",
                           @"Sophie":@"Mexican Chocolate",
                           @"Deniz":@"Natural Vanilla",
                           @"Tom":@"Mexican Chocolate",
                           @"Jim":@"Natural Vanilla",
                           @"Mark":@"Cookies 'n Cream"};
    
    NSMutableArray* _result = [NSMutableArray new];
    for (NSString* _key in _dic) {
        if ([_dic[_key] isEqualToString:iceCream]) {
            [_result addObject:_key];
        }
    }
    
    return _result;
}

- (NSDictionary*) countsOfIceCream:(NSDictionary *)iceCreamByName{
    NSMutableDictionary* _result = [NSMutableDictionary new];
    
    for (NSString* _key in [iceCreamByName allKeys]) {
        if ([[_result allKeys] containsObject:iceCreamByName[_key]]) {
            _result[iceCreamByName[_key]] = @([_result[iceCreamByName[_key]] integerValue]+1);
            
        }else{
            _result[iceCreamByName[_key]] = @1;
        }
        
    }
    
    
    return _result;
}

@end
