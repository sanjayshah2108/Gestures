//
//  swipeViewController.m
//  Gestures
//
//  Created by Sanjay Shah on 2017-10-12.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "swipeViewController.h"

@interface swipeViewController ()
@property (weak, nonatomic) IBOutlet UIView *rect;

@end

@implementation swipeViewController


- (IBAction)swipe:(UISwipeGestureRecognizer *)sender {
    
    if (sender.direction == UISwipeGestureRecognizerDirectionRight){
        
        CGPoint currentPoint = [sender locationInView:self.rect];
        
        CGPoint newRectCenter = CGPointMake(self.rect.center.x + currentPoint.x, self.rect.center.y);
        
        self.rect.center = newRectCenter;
    
    }

    else if (sender.direction == UISwipeGestureRecognizerDirectionLeft){
        
        CGPoint currentPoint = [sender locationInView:self.rect];
        
        CGPoint newRectCenter = CGPointMake(self.rect.center.x - currentPoint.x, self.rect.center.y);
        
        self.rect.center = newRectCenter;
    }
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
