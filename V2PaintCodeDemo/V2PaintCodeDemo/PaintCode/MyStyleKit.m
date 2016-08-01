//
//  MyStyleKit.m
//  V2PaintCodeDemo
//
//  Created by Paresh on 17/06/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

#import "MyStyleKit.h"

@implementation MyStyleKit

#pragma mark Cache

static UIColor* _bubbleColor = nil;

#pragma mark Initialization

+ (void)initialize
{
    // Colors Initialization
    _bubbleColor = [UIColor colorWithRed: 0.858 green: 0.628 blue: 0.281 alpha: 1];
    
}

#pragma mark Colors

+ (UIColor*)bubbleColor { return _bubbleColor; }

//// In trial version of PaintCode, the code generation is limited to one canvas

#pragma mark Drawing Methods

//// PaintCode Trial Version
//// www.paintcodeapp.com

+ (void)drawBubbleButtonWithFrame: (CGRect)frame title: (NSString*)title pressed: (BOOL)pressed
{
    //// Color Declarations
    CGFloat bubbleColorRGBA[4];
    [MyStyleKit.bubbleColor getRed: &bubbleColorRGBA[0] green: &bubbleColorRGBA[1] blue: &bubbleColorRGBA[2] alpha: &bubbleColorRGBA[3]];
    
    UIColor* bubbleFillColor = [UIColor colorWithRed: (bubbleColorRGBA[0] * 0.2 + 0.8) green: (bubbleColorRGBA[1] * 0.2 + 0.8) blue: (bubbleColorRGBA[2] * 0.2 + 0.8) alpha: (bubbleColorRGBA[3] * 0.2 + 0.8)];
    UIColor* color = [UIColor colorWithRed: 1 green: 0.639 blue: 0 alpha: 0.498];
    
    //// Variable Declarations
    UIColor* buttonColor = pressed ? color : bubbleFillColor;
    
    
    //// Subframes
    CGRect frame2 = CGRectMake(CGRectGetMinX(frame) + floor((CGRectGetWidth(frame) - 43) * 0.50307 + 0.5), CGRectGetMinY(frame) + CGRectGetHeight(frame) - 27, 43, 22);
    
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMaxX(frame) - 12.2, CGRectGetMinY(frame) + 5.15)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(frame) - 11.81, CGRectGetMinY(frame) + 5.25)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMaxX(frame) - 6.25, CGRectGetMinY(frame) + 10.81) controlPoint1: CGPointMake(CGRectGetMaxX(frame) - 9.23, CGRectGetMinY(frame) + 6.19) controlPoint2: CGPointMake(CGRectGetMaxX(frame) - 7.19, CGRectGetMinY(frame) + 8.23)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMaxX(frame) - 5.5, CGRectGetMinY(frame) + 19.79) controlPoint1: CGPointMake(CGRectGetMaxX(frame) - 5.5, CGRectGetMinY(frame) + 13.18) controlPoint2: CGPointMake(CGRectGetMaxX(frame) - 5.5, CGRectGetMinY(frame) + 15.38)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(frame) - 5.5, CGRectGetMaxY(frame) - 38.29)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMaxX(frame) - 6.15, CGRectGetMaxY(frame) - 29.7) controlPoint1: CGPointMake(CGRectGetMaxX(frame) - 5.5, CGRectGetMaxY(frame) - 33.88) controlPoint2: CGPointMake(CGRectGetMaxX(frame) - 5.5, CGRectGetMaxY(frame) - 31.68)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(frame) - 6.25, CGRectGetMaxY(frame) - 29.31)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMaxX(frame) - 11.81, CGRectGetMaxY(frame) - 23.75) controlPoint1: CGPointMake(CGRectGetMaxX(frame) - 7.19, CGRectGetMaxY(frame) - 26.73) controlPoint2: CGPointMake(CGRectGetMaxX(frame) - 9.23, CGRectGetMaxY(frame) - 24.69)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMaxX(frame) - 20.79, CGRectGetMaxY(frame) - 23) controlPoint1: CGPointMake(CGRectGetMaxX(frame) - 14.18, CGRectGetMaxY(frame) - 23) controlPoint2: CGPointMake(CGRectGetMaxX(frame) - 16.38, CGRectGetMaxY(frame) - 23)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 34.92, CGRectGetMaxY(frame2) - 18)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 21.42, CGRectGetMaxY(frame2) - 4.5) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 28.74, CGRectGetMaxY(frame2) - 11.82) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 21.42, CGRectGetMaxY(frame2) - 4.5)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 7.92, CGRectGetMaxY(frame2) - 18) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 21.42, CGRectGetMaxY(frame2) - 4.5) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 14.1, CGRectGetMaxY(frame2) - 11.82)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 0.79, CGRectGetMaxY(frame2) - 18)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 13.2, CGRectGetMaxY(frame) - 23.65) controlPoint1: CGPointMake(CGRectGetMinX(frame2) - 3.62, CGRectGetMaxY(frame2) - 18) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 15.18, CGRectGetMaxY(frame) - 23)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 12.81, CGRectGetMaxY(frame) - 23.75)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 7.25, CGRectGetMaxY(frame) - 29.31) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 10.23, CGRectGetMaxY(frame) - 24.69) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 8.19, CGRectGetMaxY(frame) - 26.73)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 6.5, CGRectGetMaxY(frame) - 38.29) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 6.5, CGRectGetMaxY(frame) - 31.68) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 6.5, CGRectGetMaxY(frame) - 33.88)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 6.5, CGRectGetMinY(frame) + 19.79)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 7.15, CGRectGetMinY(frame) + 11.2) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 6.5, CGRectGetMinY(frame) + 15.38) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 6.5, CGRectGetMinY(frame) + 13.18)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 7.25, CGRectGetMinY(frame) + 10.81)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 12.81, CGRectGetMinY(frame) + 5.25) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 8.19, CGRectGetMinY(frame) + 8.23) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 10.23, CGRectGetMinY(frame) + 6.19)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 21.79, CGRectGetMinY(frame) + 4.5) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 15.18, CGRectGetMinY(frame) + 4.5) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 17.38, CGRectGetMinY(frame) + 4.5)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(frame) - 20.79, CGRectGetMinY(frame) + 4.5)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMaxX(frame) - 12.2, CGRectGetMinY(frame) + 5.15) controlPoint1: CGPointMake(CGRectGetMaxX(frame) - 16.38, CGRectGetMinY(frame) + 4.5) controlPoint2: CGPointMake(CGRectGetMaxX(frame) - 14.18, CGRectGetMinY(frame) + 4.5)];
    [bezierPath closePath];
    [buttonColor setFill];
    [bezierPath fill];
    [MyStyleKit.bubbleColor setStroke];
    bezierPath.lineWidth = 3;
    [bezierPath stroke];
    
    
    //// Rectangle 4 Drawing
    CGRect rectangle4Rect = CGRectMake(CGRectGetMinX(frame) + 14, CGRectGetMinY(frame) + 13, CGRectGetWidth(frame) - 27, CGRectGetHeight(frame) - 46);
    NSMutableParagraphStyle* rectangle4Style = [NSMutableParagraphStyle new];
    rectangle4Style.alignment = NSTextAlignmentCenter;
    
    NSDictionary* rectangle4FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"AvenirNext-Medium" size: 26], NSForegroundColorAttributeName: MyStyleKit.bubbleColor, NSParagraphStyleAttributeName: rectangle4Style};
    
    [title drawInRect: rectangle4Rect withAttributes: rectangle4FontAttributes];
}

@end

