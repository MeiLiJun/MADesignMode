//
//  BlueSubView.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "BlueSubView.h"

@implementation BlueSubView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 100, 100, 100);
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

@end
