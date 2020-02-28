//
//  MASubCenter.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MASubCenter : NSObject

// 创建书刊订阅号
+ (void)creatNumber:(NSString *)subNumber;

// 移除订阅号
+ (void)removeNumber:(NSString *)subNumber;

// 添加用户
+ (void)addUser:(id <SubProtocol>)user wihtNumber:(NSString *)userNumber;

// 移除用户
+ (void)removeUser:(id <SubProtocol>)user withNumber:(NSString *)userNumber;

// 发送消息
+ (void)sendMessage:(id)message withSubNumber:(NSString *)SubNumber;

@end

NS_ASSUME_NONNULL_END
