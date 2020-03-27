
//
//  MacComputer.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MacComputer.h"

@implementation MacComputer

#pragma mark - MacComputer Protocol
//cpu
- (void)cpu:(NSString *)cup{
    NSLog(@"Mac电脑处理器: %@", cup);
}

//显卡
- (void)display:(NSString *)display{
    NSLog(@"Mac电脑显卡: %@", display);
}

//主板
- (void)mainboard:(NSString *)mainboard{
    NSLog(@"Mac电脑主板: %@", mainboard);
}

//系统
- (void)os :(NSString *)os{
    NSLog(@"Mac电脑系统: %@", os);
}

@end
