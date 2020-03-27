//
//  AbstarctSpamMessages.m
//  NSProxyDemo
//
//  Created by James on 2017/12/11.
//  Copyright © 2017年 TZ. All rights reserved.
//

#import "AbstarctSpamMessages.h"

@implementation AbstarctSpamMessages

+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

// 空的垃圾机制方法
- (void)emptySpamMessages:(NSArray *)parameter withString:(NSString *)str{
    NSLog(@"处理垃圾消息");
}

@end
