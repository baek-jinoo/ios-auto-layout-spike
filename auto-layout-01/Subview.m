//
//  Subview.m
//  auto-layout-01
//
//  Created by Jinwoo Baek on 3/17/15.
//  Copyright (c) 2015 Lumos Labs Inc. All rights reserved.
//

#import "Subview.h"

@implementation Subview

- (CGSize)intrinsicContentSize;
{
    return self.bounds.size;
}

@end
