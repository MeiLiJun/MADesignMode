//
//  PhysicalDefense.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "PhysicalDefense.h"
#import "PhysicalAttack.h"

@implementation PhysicalDefense

- (void)handleRequest:(AttackBase *)request{
    if ([request isKindOfClass:[PhysicalAttack class]]) {
        NSLog(@"1.攻击没有通过这个物理攻击");
    } else {
        NSLog(@"1.不是物理攻击,防不住,其它去处理---%@", [PhysicalAttack class]);
        [self.nextHandler handleRequest:request];
    }
}

@end
