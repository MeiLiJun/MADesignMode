//
//  PassiveDefense.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "PassiveDefense.h"

@implementation PassiveDefense

- (void)handleRequest:(AttackBase *)request{
    NSLog(@"被--%@--伤害到了",[request class]);
}

@end
