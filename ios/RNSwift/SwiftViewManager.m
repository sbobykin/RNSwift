//
//  SwiftViewManager.m
//  RNSwift
//

#import "SwiftViewManager.h"

@implementation SwiftViewManager

RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(text, NSString)
RCT_EXPORT_VIEW_PROPERTY(onSwiftButtonPressed, RCTBubblingEventBlock)

- (UIView *) view
{
  SwiftView* swiftView = [SwiftView new];
  swiftView.delegate = self;
  return swiftView;
  //return [[SwiftView alloc] init];
}

- (void)swiftButtonTapped {
  NSLog(@"SwiftViewManager: swiftButtonTapped");
}

@end
