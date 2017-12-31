//
//  SwiftViewObjC.h
//  RNSwift
//


#import <UIKit/UIKit.h>
#import <React/RCTComponent.h>

@interface SwiftViewObjC : UIView

@property (nonatomic, copy) RCTBubblingEventBlock onSwiftButtonPressed;

//Usual view stuff to override
- (void)layoutSubviews;

@end
