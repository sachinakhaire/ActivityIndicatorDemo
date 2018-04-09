//
//  ViewController.m
//  acitivityIndicatorAutoLayout
//
//  Created by MacMini3 on 15/03/18.
//  Copyright © 2018 SA. All rights reserved.
// Sachin Khaire

#import "ViewController.h"
#import "NSLayoutConstraint+Ambiguity.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *activityIndicatorWidthConstraint;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
// spacerConstraint is the horizontal spacer constraint between the activity indicator and the gray view
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *spacerConstraint;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.activityIndicator startAnimating];
}

- (IBAction)stopButtonTapped:(UIButton *)sender
{
    sender.enabled = NO;
    
    self.activityIndicatorWidthConstraint.constant = 0;
    self.spacerConstraint.constant = 0;
    
    [UIView animateWithDuration:1.0 animations:^{
        self.activityIndicator.alpha = 0.0;
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
       [self.activityIndicator stopAnimating];
        //[NSLayoutConstraint reportAmbiguity:nil];
    }];
}

@end
