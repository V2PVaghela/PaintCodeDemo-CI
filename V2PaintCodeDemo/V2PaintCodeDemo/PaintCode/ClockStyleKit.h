//
//  ClockStyleKit.h
//  V2PaintCodeDemo
//
//  Created by Paresh on 17/06/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ClockStyleKit : NSObject
//// In trial version of PaintCode, the code generation is limited to one canvas

// Drawing Methods
+ (void)drawClockWithNumbersColor: (UIColor*)numbersColor darkHandsColor: (UIColor*)darkHandsColor lightHandColor: (UIColor*)lightHandColor rimColor: (UIColor*)rimColor tickColor: (UIColor*)tickColor faceColor: (UIColor*)faceColor hours: (CGFloat)hours minutes: (CGFloat)minutes seconds: (CGFloat)seconds;

@end
