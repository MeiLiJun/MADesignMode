//
//  AbstarctProxy.h
//  NSProxyDemo
//
//  Created by James on 2017/12/11.
//  Copyright © 2017年 TZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstarctProxy : NSProxy

// 代理属性
@property (nonatomic, weak) id delegate;

@end
