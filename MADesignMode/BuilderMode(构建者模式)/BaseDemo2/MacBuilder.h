//
//  MacBuilder.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MacComputerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol MacBuilder <NSObject>

//构建cpu
- (id <MacBuilder>)buildCpu:(NSString *)cup;

//构建显卡
- (id <MacBuilder>)buildDisplay:(NSString *)display;

//构建主板
- (id <MacBuilder>)buildMainboard:(NSString *)mainboard;

//构建系统
- (id <MacBuilder>)buildOS:(NSString *)os;

//构建
- (id<MacComputerProtocol>)build;

@end

NS_ASSUME_NONNULL_END
