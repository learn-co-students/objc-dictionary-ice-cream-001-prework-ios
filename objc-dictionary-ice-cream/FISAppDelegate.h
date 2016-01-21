//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(NSArray *) namesForIceCream: (NSString *) icecream;

-(NSDictionary *) countsOfIceCream: (NSDictionary *) iceCreamByName;

@end

