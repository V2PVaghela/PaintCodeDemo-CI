//
//  MyStyleKit.h
//  V2PaintCodeDemo
//
//  Created by Paresh on 17/06/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface MyStyleKit : NSObject

// Colors
+ (UIColor*)bubbleColor;

//// In trial version of PaintCode, the code generation is limited to one canvas

// Drawing Methods
+ (void)drawBubbleButtonWithFrame: (CGRect)frame title: (NSString*)title pressed: (BOOL)pressed;

@end
