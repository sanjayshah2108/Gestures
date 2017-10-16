//
//  EdgePanViewController.m
//  Gestures
//
//  Created by Sanjay Shah on 2017-10-12.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "EdgePanViewController.h"

@interface EdgePanViewController ()

@property UIView *square;

@property CGRect squareOrigin;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

-(void) edgePan:(UIPanGestureRecognizer*) sender;

@end

@implementation EdgePanViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.width = 400;
    self.height = 300;
    
    self.squareOrigin = CGRectMake(400, CGRectGetMidY(self.view.bounds) - self.height/2, self.width, self.height);
    

    
    
    self.square = [[UIView alloc] initWithFrame:self.squareOrigin];
    
    self.square.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.square];

    UIPanGestureRecognizer *edgePan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(edgePan:)];
    [self.view addGestureRecognizer:edgePan];
    
}

-(void) edgePan:(UIPanGestureRecognizer*) sender{

    
    if (sender.state == UIGestureRecognizerStateChanged)
    {
        CGPoint locationInView = [sender translationInView:sender.view];
        CGPoint oldCenter = sender.view.center;
        CGPoint newCenter = CGPointMake(oldCenter.x + locationInView.x, oldCenter.y);
        
        [sender setTranslation:CGPointZero inView:self.view];
        sender.view.center = newCenter;
    }
    
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        if (self.square.frame.origin.x > 300)
        {
            self.square.frame = self.squareOrigin;
        }
        else
        {
            CGRect newOrigin = CGRectMake(100, CGRectGetMidY(self.view.bounds) - self.height/2, self.width, self.height);
            self.square.frame = newOrigin;
            
            //add panBack feature
        }
    }
    
}

@end
