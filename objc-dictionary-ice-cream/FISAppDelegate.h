//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Write your custom method names here.
 
 */

// Finish the namesForIceCream: method body to return an array of the names of everyone who likes the ice cream flavor submitted in the string argument. For example, "Mexican Chocolate" should return an array with "Sophie" and "Tom".
- (NSArray *)namesForIceCream: (NSString *)iceCream;

// Write the countsOfIceCream body which returns a dictionary of the number (value) of people who like each flavor of ice cream (key). Look at the countsByIceCream dictionary in the FISAppDelegateSpec file to better understand what the test is expecting. Hint: Try using the namesForIceCream: method that you just wrote to get a list of names for each ice cream flavor by calling it on self. This method returns an array of names which you can then count. Remember that you have to convert integer values to NSNumber in order to store them in a collection.
- (NSDictionary *)countsOfIceCream: (NSDictionary *)iceCreamByName;

@end

