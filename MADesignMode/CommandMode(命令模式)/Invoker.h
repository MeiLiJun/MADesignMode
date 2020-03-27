//
//  Invoker.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Invoker : NSObject

+ (instancetype)sharedInstance;

// 回退指令
- (void)goBack;

// 添加操作指令
- (void)addAndExcute:(id <CommandProtocol>)command;

@end

NS_ASSUME_NONNULL_END
