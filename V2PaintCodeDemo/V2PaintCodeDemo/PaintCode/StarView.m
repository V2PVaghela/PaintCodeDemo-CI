//
//  StarView.m
//  V2PaintCodeDemo
//
//  Created by Paresh on 15/06/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

#import "StarView.h"
#import "PaintCodeDemo.h"
@implementation StarView
-(void) drawRect:(CGRect)rect
{
    [PaintCodeDemo drawStar];
    //[PaintCodeDemo drawClockWithNumbersColor:[UIColor blackColor] darkHandsColor:[UIColor blackColor] lightHandColor:[UIColor greenColor] rimColor:[UIColor blackColor] tickColor:[UIColor lightGrayColor] faceColor:[UIColor whiteColor] hours:07.0 minutes:43.00 seconds:03.0];
}
@end
