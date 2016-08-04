//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Write your custom method names here.
 namesForIceCream: which takes an NSString argument iceCream and returns an NSArray object.
 countsOfIceCream: which takes an NSDictionary argument iceCreamByName and returns an NSDictionary object.
 
 */

//Given an ice cream flavor, return an array of the people who like that ice cream. Person-to-ice-cream mapping is hard-coded.
- (NSArray *)namesForIceCream:(NSString *)iceCream;

//Given a mapping of ice cream preferences by name, return a mapping of ice cream flavors to count of people who prefer
//that flavor.
//Currently, the hard-coded preferences from namesForIceCream will override whatever input is given via iceCreamByName.
- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName;

@end

