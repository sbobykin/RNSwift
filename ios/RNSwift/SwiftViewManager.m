//
//  SwiftViewManager.m
//  RNSwift
//

#import "SwiftViewManager.h"

@implementation SwiftViewManager

RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(text, NSString)
RCT_EXPORT_VIEW_PROPERTY(onSwiftButtonPressed, RCTBubblingEventBlock)

SwiftView* swiftView;

- (UIView *) view
{
  swiftView = [SwiftView new];
  swiftView.delegate = self;
  return swiftView;
  //return [[SwiftView alloc] init];
}

- (void)swiftButtonTapped {
  
  if(!swiftView.onSwiftButtonPressed) {
    return;
  }
  
  swiftView.onSwiftButtonPressed(@{});
}

@end
