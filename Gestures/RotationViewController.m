//
//  RotationViewController.m
//  Gestures
//
//  Created by Sanjay Shah on 2017-10-12.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

@property (strong) UIView *square;
-(void) rotate:(UIRotationGestureRecognizer*) sender;


@end

@implementation RotationViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.square = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    self.square.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.square];
    
    UIRotationGestureRecognizer *rotate = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotate:)];
    [self.view addGestureRecognizer:rotate];
    
    // Do any additional setup after loading the view.
}

-(void) rotate:(UIRotationGestureRecognizer*) sender {

    self.square.transform = CGAffineTransformRotate(self.square.transform, sender.rotation);
    sender.rotation = 0.0;
}


@end
