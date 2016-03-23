//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 

 * namesForIceCream: which takes an NSString argument iceCream and returns an NSArray object.
 * countsOfIceCream: which takes an NSDictionary argument iceCreamByName and returns an NSDictionary object.
 
 */

-(NSMutableArray*)namesForIceCream:(NSString*)iceCream;

-(NSDictionary*)countsOfIceCream:(NSDictionary*)iceCreamByName;

@end

