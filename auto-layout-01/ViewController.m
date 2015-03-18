//
//  ViewController.m
//  auto-layout-01
//
//  Created by Jinwoo Baek on 3/17/15.
//  Copyright (c) 2015 Lumos Labs Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIView *subview01;


@end

@implementation ViewController

- (IBAction)increaseSubviewHeight:(id)sender {
    CGRect rect01 = self.subview01.bounds;
    
    rect01.size = CGSizeMake(CGRectGetWidth(rect01), CGRectGetHeight(rect01) + 90.0f);
//    rect01.origin = CGPointMake(rect01.origin.x, rect01.origin.y - 20.0f);
    
    self.subview01.bounds = rect01;
    [self.subview01 invalidateIntrinsicContentSize];
}

- (IBAction)decreaseSubviewHeight:(id)sender {
    CGRect rect01 = self.subview01.bounds;
    
    if (CGRectGetHeight(rect01) > 90.0f) {
        rect01.size = CGSizeMake(CGRectGetWidth(rect01), CGRectGetHeight(rect01) - 90.0f);
    }
//    rect01.origin = CGPointMake(0, rect01.origin.y + 20.0f);
    
    self.subview01.bounds = rect01;
    [self.subview01 invalidateIntrinsicContentSize];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.containerView setContentHuggingPriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisHorizontal];
//    [self.containerView setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
//    [self.containerView setContentHuggingPriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisVertical];
//    [self.containerView setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisVertical];
//
//    [self.subview01 setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisVertical];
//    [self.subview01 setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
//    [self constraintViewToSuperView:self.subview01];
}

- (void)constraintViewToSuperView:(UIView *)view {
    view.translatesAutoresizingMaskIntoConstraints = NO;
    NSDictionary *bindings = NSDictionaryOfVariableBindings(view);
    
    NSArray *horizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:bindings];
    NSArray *verticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:bindings];
    
    [view.superview addConstraints:horizontalConstraints];
    [view.superview addConstraints:verticalConstraints];
}

@end
