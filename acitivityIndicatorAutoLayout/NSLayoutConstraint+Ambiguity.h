//
//  NSLayoutConstraint+Ambiguity.h
//
//  Created by MacMini3 on 15/03/18.
//  Copyright © 2018 SA. All rights reserved.
// Sachin Khaire

#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (Ambiguity)

+ (void)reportAmbiguity:(UIView *)view;

@end
