//
//  SwiftViewManager.m
//  RNSwift
//
//  Created by Apel Yl on 21/12/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//
#import <MapKit/MapKit.h>
#import "SwiftViewManager.h"
#import "RNSwift-swift.h"

@implementation SwiftViewManager

RCT_EXPORT_MODULE()

- (UIView *) view
{
  //return [[MKMapView alloc] init];
  return [[SwiftView alloc] init];
}

@end
