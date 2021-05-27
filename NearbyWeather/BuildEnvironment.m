//
//  BuildEnvironment.m
//  NearbyWeather
//
// //  Created by hassan Baraka on 05.27.21.
//     Copyright © 2021 hassan Baraka. All rights reserved.
//

#import "BuildEnvironment.h"

@implementation BuildEnvironment

+ (BOOL)isReleaseEvironment
{
#if DEBUG==1
  return NO;
#else
  return YES;
#endif
}

@end
