//
//  FirstViewController.m
//  Gestures
//
//  Created by Sanjay Shah on 2017-10-12.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()
@property (weak, nonatomic) IBOutlet UIView *square;

@end

@implementation TapViewController
- (IBAction)tap:(UITapGestureRecognizer *)sender {
    
self.square.backgroundColor =[self.square.backgroundColor isEqual: [UIColor whiteColor]] ? [UIColor orangeColor] : [UIColor whiteColor];
    
    
//    if (self.square.backgroundColor == [UIColor whiteColor]) {
//
//        self.square.backgroundColor = [UIColor orangeColor];
//
//    }
//    else {
//        self.square.backgroundColor = [UIColor whiteColor];
//    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
