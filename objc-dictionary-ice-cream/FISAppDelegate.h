//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Write your custom method names here.
 
 */

// namesForIceCream: which takes an NSString argument iceCream and returns an NSArray object.

- (NSArray*)namesForIceCream:(NSString*)iceCream;

- (NSDictionary*)countsOfIceCream:(NSDictionary*)iceCreamByName;




@end

