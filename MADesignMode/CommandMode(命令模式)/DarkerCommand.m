//
//  DarkerCommand.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "DarkerCommand.h"

@interface DarkerCommand ()

@property (nonatomic, strong) CommandReceiver *receiver;
@property (nonatomic, assign) CGFloat paramter;

@end

@implementation DarkerCommand

- (instancetype)initWithReceiver:(CommandReceiver *)receiver paramter:(CGFloat)paramter{
    self = [super init];
    if (self) {
        self.receiver = receiver;
        self.paramter = paramter;
    }
    return self;
}

#pragma mark - protocol
- (void)excute{
    [self.receiver mackeDarker:self.paramter];
}

- (void)backExcute{
    [self.receiver mackeLighter:self.paramter];
}

@end
