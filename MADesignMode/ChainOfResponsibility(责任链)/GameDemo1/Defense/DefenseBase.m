//
//  DefenseBase.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "DefenseBase.h"

@implementation DefenseBase

- (void)handleRequest:(AttackBase *)request{
    // 如果不能响应, 就把请求转发给successor来处理就行了
    [self.nextHandler handleRequest:request];
}

@end
