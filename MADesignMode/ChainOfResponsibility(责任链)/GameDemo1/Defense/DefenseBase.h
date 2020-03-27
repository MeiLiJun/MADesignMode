//
//  DefenseBase.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AttackBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface DefenseBase : NSObject

// 下一个响应者
@property (nonatomic, strong) DefenseBase *nextHandler;

// 处理请求的接口
- (void)handleRequest:(AttackBase *)request;

@end

NS_ASSUME_NONNULL_END
