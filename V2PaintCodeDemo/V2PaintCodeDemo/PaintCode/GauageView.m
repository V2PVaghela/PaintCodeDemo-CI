//
//  StarView.m
//  V2PaintCodeDemo
//
//  Created by Paresh on 15/06/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

#import "GauageView.h"
#import "PaintCodeDemo.h"
@implementation GauageView
-(void) drawRect:(CGRect)rect
{
   [PaintCodeDemo drawGaugeWithPressure:_currentPressure];
}
@end
