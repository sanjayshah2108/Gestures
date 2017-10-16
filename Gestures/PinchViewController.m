//
//  PinchViewController.m
//  Gestures
//
//  Created by Sanjay Shah on 2017-10-12.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "PinchViewController.h"

@implementation PinchViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    
    UIView *star = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.view.bounds) - 50, CGRectGetMidY(self.view.bounds) - 50, 100, 100)];
    
    
    [self.view addSubview:star];
    
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinched:)];
    [self.view addGestureRecognizer:pinch];
    
}



-(void) pinched:(UIPinchGestureRecognizer*) sender{
    CGFloat scale = sender.scale;
    NSLog(@"%f" , scale);
    sender.view.transform =  CGAffineTransformScale(sender.view.transform , scale, scale);
   
    sender.scale = 1.0;
    
    
                             
                             
    
}
@end
