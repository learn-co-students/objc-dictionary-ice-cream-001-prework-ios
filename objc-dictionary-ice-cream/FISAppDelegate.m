//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

//In the FISAppDelegate.m implementation file, use autocomplete to define the method bodies to return nil. At the start of the namesForIceCream: method, translate Mark's notes into an NSDictionary with each name as a key with that person's preferred ice cream flavor as the associated value.

//Finish the namesForIceCream: method body to return an array of the names of everyone who likes the ice cream flavor submitted in the string argument. For example, "Mexican Chocolate" should return an array with "Sophie" and "Tom".

-(NSArray *)namesForIceCream:(NSString *)iceCream {
    NSDictionary *iceCreamByName = @{  @"Joe":@"Peanut Butter and Chocolate",
                                        @"Tim":@"Natural Vanilla",
                                        @"Sophie":@"Mexican Chocolate",
                                        @"Deniz":@"Natural Vanilla",
                                        @"Tom":@"Mexican Chocolate",
                                        @"Jim":@"Natural Vanilla",
                                        @"Mark":@"Cookies 'n Cream"};
    
    NSMutableArray *mIceCream = [[NSMutableArray alloc] init];
    for (NSString *key in iceCreamByName) {
        NSLog(@"%@ likes %@", key, iceCreamByName[key]);
    }
    return mIceCream;
}

//Write the countsOfIceCream body which returns a dictionary of the number (value) of people who like each flavor of ice cream (key). Look at the countsByIceCream dictionary in the FISAppDelegateSpec file to better understand what the test is expecting.

//Hint: Try using the namesForIceCream: method that you just wrote to get a list of names for each ice cream flavor by calling it on self. This method returns an array of names which you can then count. Remember that you have to convert integer values to NSNumber in order to store them in a collection.

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSDictionary *countsByIceCream; @{@"Peanut Butter and Chocolate":@"1",
                                      @"Natural Vanilla":@"3",
                                      @"Mexican Chocolate":@"2",
                                      @"Cookie 'n Cream":@"1"};
    return countsByIceCream;
}

@end
