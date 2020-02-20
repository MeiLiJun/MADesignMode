//
//  RedSubView.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "RedSubView.h"

@implementation RedSubView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 100, 100, 100);
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

@end
