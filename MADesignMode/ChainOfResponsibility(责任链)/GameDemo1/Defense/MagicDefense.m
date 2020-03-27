//
//  MagicDefense.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MagicDefense.h"
#import "MagicAttack.h"

@implementation MagicDefense

- (void)handleRequest:(AttackBase *)request{
    if ([request isKindOfClass:[MagicAttack class]]) {
        NSLog(@"1.攻击没有通过这个盔甲");
    } else {
        NSLog(@"1.不是剑攻击,防不住,其它去处理---%@", [MagicAttack class]);
        [self.nextHandler handleRequest:request];
    }
}

@end
