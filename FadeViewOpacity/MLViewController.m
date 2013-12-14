//
//  MLViewController.m
//  FadeViewOpacity
//
//  Created by Matt Long on 12/14/13.
//  Copyright (c) 2013 Matt Long. All rights reserved.
//

#import "MLViewController.h"

@interface MLViewController ()

@property (nonatomic, strong) CALayer *animatedLayer;
@end

@implementation MLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    _animatedLayer = [CALayer layer];
    _animatedLayer.position = CGPointMake(200.0f, 200.0f);
    _animatedLayer.bounds = CGRectMake(0.0f, 0.0f, 200.0f, 300.0f);
    _animatedLayer.backgroundColor = [[UIColor orangeColor] CGColor];
    
    [self.view.layer addSublayer:_animatedLayer];
    
}

- (IBAction)sliderDidChange:(id)sender
{
    [CATransaction begin];
    [CATransaction setAnimationDuration:0.75f];
    self.animatedLayer.opacity = [(UISlider*)sender value];
    [CATransaction commit];

}

@end
