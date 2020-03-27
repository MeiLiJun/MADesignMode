//
//  LighterCommand.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "LighterCommand.h"

@interface LighterCommand ()
@property (nonatomic, strong) CommandReceiver *receiver;
@property (nonatomic, assign) CGFloat paramter;

@end

@implementation LighterCommand

- (instancetype)initWithReceiver:(CommandReceiver *)receiver paramter:(CGFloat)paramter {
    
    self = [super init];
    if (self) {
        self.receiver = receiver;
        self.paramter = paramter;
    }
    return self;
}

// 执行命令
- (void)excute {
    [self.receiver mackeLighter:self.paramter];
}

// 撤销命令
- (void)backExcute {
    [self.receiver mackeDarker:self.paramter];
}

@end
