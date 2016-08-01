//
//  ViewController.m
//  V2PaintCodeDemo
//
//  Created by Paresh on 17/06/16.
//  Copyright © 2016 V2Solutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _gaugeView.currentPressure = 0.5;
    [_gaugeView setNeedsDisplay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ValueChanged:(id)sender {
    UISlider *slider = (UISlider *)sender;
    _gaugeView.currentPressure = (CGFloat)[slider value];
    [_gaugeView setNeedsDisplay];
}
@end
