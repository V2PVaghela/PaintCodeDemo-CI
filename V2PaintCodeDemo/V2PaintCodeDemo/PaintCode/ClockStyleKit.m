//
//  ClockStyleKit.m
//  V2PaintCodeDemo
//
//  Created by Paresh on 17/06/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

#import "ClockStyleKit.h"

@implementation ClockStyleKit
#pragma mark Initialization

+ (void)initialize
{
}

//// In trial version of PaintCode, the code generation is limited to one canvas

#pragma mark Drawing Methods

//// PaintCode Trial Version
//// www.paintcodeapp.com

+ (void)drawClockWithNumbersColor: (UIColor*)numbersColor darkHandsColor: (UIColor*)darkHandsColor lightHandColor: (UIColor*)lightHandColor rimColor: (UIColor*)rimColor tickColor: (UIColor*)tickColor faceColor: (UIColor*)faceColor hours: (CGFloat)hours minutes: (CGFloat)minutes seconds: (CGFloat)seconds
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
    //// Variable Declarations
    //NSString* expression = hours > 12 ? @"PM" : @"AM";
    CGFloat secondsAngle = -seconds / 60.0 * 360;
    CGFloat minuteAngle = -(minutes / 60.0 * 360 - secondsAngle / 60.0);
    CGFloat hourAngle = -hours / 12.0 * 360 + minuteAngle / 12.0;
    
    //// Oval 2 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 130, 130);
    
    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(-116, -116, 232, 232)];
    [rimColor setFill];
    [oval2Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Oval Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 130, 130);
    
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(-110, -110, 220, 220)];
    [faceColor setFill];
    [ovalPath fill];
    
    CGContextRestoreGState(context);
    
    
    //// Text Drawing
    UIBezierPath* textPath = [UIBezierPath bezierPath];
    [textPath moveToPoint: CGPointMake(123.72, 38.95)];
    [textPath addLineToPoint: CGPointMake(120.22, 41.82)];
    [textPath addLineToPoint: CGPointMake(118.47, 39.75)];
    [textPath addLineToPoint: CGPointMake(124, 35.3)];
    [textPath addLineToPoint: CGPointMake(126.72, 35.3)];
    [textPath addLineToPoint: CGPointMake(126.72, 53)];
    [textPath addLineToPoint: CGPointMake(123.72, 53)];
    [textPath addLineToPoint: CGPointMake(123.72, 38.95)];
    [textPath closePath];
    [textPath moveToPoint: CGPointMake(130.72, 50.25)];
    [textPath addLineToPoint: CGPointMake(137.55, 43.55)];
    [textPath addCurveToPoint: CGPointMake(138.86, 41.94) controlPoint1: CGPointMake(138.1, 43.02) controlPoint2: CGPointMake(138.54, 42.48)];
    [textPath addCurveToPoint: CGPointMake(139.35, 40.07) controlPoint1: CGPointMake(139.19, 41.4) controlPoint2: CGPointMake(139.35, 40.78)];
    [textPath addCurveToPoint: CGPointMake(138.54, 38.09) controlPoint1: CGPointMake(139.35, 39.24) controlPoint2: CGPointMake(139.08, 38.58)];
    [textPath addCurveToPoint: CGPointMake(136.53, 37.35) controlPoint1: CGPointMake(138, 37.6) controlPoint2: CGPointMake(137.33, 37.35)];
    [textPath addCurveToPoint: CGPointMake(134.47, 38.21) controlPoint1: CGPointMake(135.67, 37.35) controlPoint2: CGPointMake(134.99, 37.64)];
    [textPath addCurveToPoint: CGPointMake(133.53, 40.38) controlPoint1: CGPointMake(133.96, 38.79) controlPoint2: CGPointMake(133.64, 39.51)];
    [textPath addLineToPoint: CGPointMake(130.6, 39.93)];
    [textPath addCurveToPoint: CGPointMake(131.22, 37.9) controlPoint1: CGPointMake(130.68, 39.19) controlPoint2: CGPointMake(130.89, 38.52)];
    [textPath addCurveToPoint: CGPointMake(132.5, 36.3) controlPoint1: CGPointMake(131.56, 37.28) controlPoint2: CGPointMake(131.98, 36.75)];
    [textPath addCurveToPoint: CGPointMake(134.31, 35.24) controlPoint1: CGPointMake(133.02, 35.85) controlPoint2: CGPointMake(133.62, 35.5)];
    [textPath addCurveToPoint: CGPointMake(136.57, 34.85) controlPoint1: CGPointMake(135, 34.98) controlPoint2: CGPointMake(135.76, 34.85)];
    [textPath addCurveToPoint: CGPointMake(138.79, 35.18) controlPoint1: CGPointMake(137.34, 34.85) controlPoint2: CGPointMake(138.08, 34.96)];
    [textPath addCurveToPoint: CGPointMake(140.68, 36.16) controlPoint1: CGPointMake(139.5, 35.39) controlPoint2: CGPointMake(140.12, 35.72)];
    [textPath addCurveToPoint: CGPointMake(141.99, 37.79) controlPoint1: CGPointMake(141.23, 36.6) controlPoint2: CGPointMake(141.66, 37.15)];
    [textPath addCurveToPoint: CGPointMake(142.47, 40.03) controlPoint1: CGPointMake(142.31, 38.43) controlPoint2: CGPointMake(142.47, 39.17)];
    [textPath addCurveToPoint: CGPointMake(142.25, 41.61) controlPoint1: CGPointMake(142.47, 40.59) controlPoint2: CGPointMake(142.4, 41.12)];
    [textPath addCurveToPoint: CGPointMake(141.64, 43) controlPoint1: CGPointMake(142.1, 42.1) controlPoint2: CGPointMake(141.9, 42.57)];
    [textPath addCurveToPoint: CGPointMake(140.74, 44.24) controlPoint1: CGPointMake(141.38, 43.43) controlPoint2: CGPointMake(141.08, 43.85)];
    [textPath addCurveToPoint: CGPointMake(139.62, 45.38) controlPoint1: CGPointMake(140.4, 44.63) controlPoint2: CGPointMake(140.03, 45.01)];
    [textPath addLineToPoint: CGPointMake(134.53, 50.25)];
    [textPath addLineToPoint: CGPointMake(142.5, 50.25)];
    [textPath addLineToPoint: CGPointMake(142.5, 53)];
    [textPath addLineToPoint: CGPointMake(130.72, 53)];
    [textPath addLineToPoint: CGPointMake(130.72, 50.25)];
    [textPath closePath];
    [numbersColor setFill];
    [textPath fill];
    
    
    //// Bezier Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 130, 130);
    CGContextRotateCTM(context, -(minuteAngle + 90) * M_PI / 180);
    
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(7.07, -7.07)];
    [bezierPath addCurveToPoint: CGPointMake(9.54, -3) controlPoint1: CGPointMake(8.25, -5.89) controlPoint2: CGPointMake(9.07, -4.49)];
    [bezierPath addLineToPoint: CGPointMake(95, -3)];
    [bezierPath addLineToPoint: CGPointMake(95, 3)];
    [bezierPath addLineToPoint: CGPointMake(9.54, 3)];
    [bezierPath addCurveToPoint: CGPointMake(7.07, 7.07) controlPoint1: CGPointMake(9.07, 4.49) controlPoint2: CGPointMake(8.25, 5.89)];
    [bezierPath addCurveToPoint: CGPointMake(-7.07, 7.07) controlPoint1: CGPointMake(3.17, 10.98) controlPoint2: CGPointMake(-3.17, 10.98)];
    [bezierPath addCurveToPoint: CGPointMake(-7.07, -7.07) controlPoint1: CGPointMake(-10.98, 3.17) controlPoint2: CGPointMake(-10.98, -3.17)];
    [bezierPath addCurveToPoint: CGPointMake(7.07, -7.07) controlPoint1: CGPointMake(-3.17, -10.98) controlPoint2: CGPointMake(3.17, -10.98)];
    [bezierPath closePath];
    [darkHandsColor setFill];
    [bezierPath fill];
    
    CGContextRestoreGState(context);
    
    
    //// Bezier 2 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 130, 130);
    CGContextRotateCTM(context, -(hourAngle + 90) * M_PI / 180);
    
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(7.07, -7.07)];
    [bezier2Path addCurveToPoint: CGPointMake(8.66, -5) controlPoint1: CGPointMake(7.7, -6.44) controlPoint2: CGPointMake(8.24, -5.74)];
    [bezier2Path addLineToPoint: CGPointMake(56, -5)];
    [bezier2Path addLineToPoint: CGPointMake(56, 5)];
    [bezier2Path addLineToPoint: CGPointMake(8.66, 5)];
    [bezier2Path addCurveToPoint: CGPointMake(7.07, 7.07) controlPoint1: CGPointMake(8.24, 5.74) controlPoint2: CGPointMake(7.7, 6.44)];
    [bezier2Path addCurveToPoint: CGPointMake(-7.07, 7.07) controlPoint1: CGPointMake(3.17, 10.98) controlPoint2: CGPointMake(-3.17, 10.98)];
    [bezier2Path addCurveToPoint: CGPointMake(-7.07, -7.07) controlPoint1: CGPointMake(-10.98, 3.17) controlPoint2: CGPointMake(-10.98, -3.17)];
    [bezier2Path addCurveToPoint: CGPointMake(7.07, -7.07) controlPoint1: CGPointMake(-3.17, -10.98) controlPoint2: CGPointMake(3.17, -10.98)];
    [bezier2Path closePath];
    [darkHandsColor setFill];
    [bezier2Path fill];
    
    CGContextRestoreGState(context);
    
    
    //// Group
    {
    }
    
    
    //// Group 2
    {
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 130, 130);
        CGContextRotateCTM(context, 90 * M_PI / 180);
        
        
        
        
        CGContextRestoreGState(context);
    }
    
    
    //// Group 3
    {
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 130, 130);
        CGContextRotateCTM(context, -30 * M_PI / 180);
        
        
        
        
        CGContextRestoreGState(context);
    }
    
    
    //// Group 4
    {
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 130, 130);
        CGContextRotateCTM(context, -60 * M_PI / 180);
        
        
        
        
        CGContextRestoreGState(context);
    }
    
    
    //// Group 5
    {
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 130, 130);
        CGContextRotateCTM(context, -120 * M_PI / 180);
        
        
        
        
        CGContextRestoreGState(context);
    }
    
    
    //// Group 6
    {
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 130, 130);
        CGContextRotateCTM(context, -150 * M_PI / 180);
        
        
        
        
        CGContextRestoreGState(context);
    }
    
    
   //..
    // Trial version of PaintCode only generates code for the first 5 shapes.
}


@end
