//
//  NSLayoutConstraint+Ambiguity.m
//
//  Created by MacMini3 on 15/03/18.
//  Copyright © 2018 SA. All rights reserved.
// Sachin Khaire

#import "NSLayoutConstraint+Ambiguity.h"

@implementation NSLayoutConstraint (Ambiguity)

+ (void)reportAmbiguity:(UIView *)view
{
    if (!view) {
        view = [[UIApplication sharedApplication] keyWindow];
    }
    
    for (UIView *subview in view.subviews) {
        
        NSLog(@"%@ %@", [subview class], subview.hasAmbiguousLayout ? @"AMBIGUOUS" : @"");
        
        if ([subview.subviews count]) {
            [self reportAmbiguity:subview];
        }
    }
}

@end
