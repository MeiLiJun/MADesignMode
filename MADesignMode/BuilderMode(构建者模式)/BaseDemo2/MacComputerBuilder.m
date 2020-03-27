//
//  MacComputerBuilder.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MacComputerBuilder.h"
#import "MacComputer.h"

@interface MacComputerBuilder ()

@property (nonatomic, strong) id<MacComputerProtocol> computer;

@end

@implementation MacComputerBuilder

- (instancetype)init
{
    self = [super init];
    if (self) {
        _computer = [[MacComputer alloc] init];
    }
    return self;
}

//类似的调用方式， 就是典型的构建者调用模式
#pragma mark - MacBuilder (Protocol)
//构建cpu
- (id <MacBuilder>)buildCpu:(NSString *)cup{
    [_computer cpu:cup];
    return self;
}

//构建显卡
- (id <MacBuilder>)buildDisplay:(NSString *)display{
    [_computer display:display];
    return self;
}

//构建主板
- (id <MacBuilder>)buildMainboard:(NSString *)mainboard{
    [_computer mainboard:mainboard];
    return self;
}

//构建系统
- (id <MacBuilder>)buildOS:(NSString *)os{
    [_computer os:os];
    return self;
}

//构建
- (id<MacComputerProtocol>)build{
    NSLog(@"构建了一台苹果电脑");
    //业务逻辑处理 ......
    return _computer;
}

@end
