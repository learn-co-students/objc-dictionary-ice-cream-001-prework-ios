//
//  FISAppDelegate.m
//  objc-dictionary-ice-cream
//
//  Created by Mark Murray on 7/6/15.
//  Copyright (c) 2015 Mark Murray. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream
{
  NSDictionary *iceCreamPreferences = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                                         @"Tim"    : @"Natural Vanilla"            ,
                                         @"Sophie" : @"Mexican Chocolate"          ,
                                         @"Deniz"  : @"Natural Vanilla"            ,
                                         @"Tom"    : @"Mexican Chocolate"          ,
                                         @"Jim"    : @"Natural Vanilla"            ,
                                         @"Mark"   : @"Cookies 'n Cream"          };
  
  NSArray *results = [iceCreamPreferences allKeysForObject:iceCream];
  
  return results;
  }
  
  


  


-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName
{
  NSMutableArray *allIceCreams = [[NSMutableArray alloc]init];
  for (NSString *key in iceCreamByName){
    [allIceCreams addObject:iceCreamByName[key]];
  }
  
  NSMutableDictionary *countsOfIceCream = [[NSMutableDictionary alloc]init];
  for (NSUInteger i = 0; i<allIceCreams.count; i++) {
    NSString *eachIceCream = allIceCreams[i];
    NSArray *countIceCream = [self namesForIceCream:eachIceCream];
    NSUInteger numberPerIceCream = countIceCream.count;
    NSNumber *intToNumber = @(numberPerIceCream);
    countsOfIceCream[eachIceCream ] = intToNumber;
  }
  return countsOfIceCream;
}

  


@end
