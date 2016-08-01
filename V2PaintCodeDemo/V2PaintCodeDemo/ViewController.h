//
//  ViewController.h
//  V2PaintCodeDemo
//
//  Created by Paresh on 17/06/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GauageView.h"
@interface ViewController : UIViewController
@property (nonatomic,weak)  IBOutlet GauageView *gaugeView;
- (IBAction)ValueChanged:(id)sender;
@end

