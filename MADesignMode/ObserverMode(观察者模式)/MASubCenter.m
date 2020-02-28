//
//  MASubCenter.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MASubCenter.h"

//  NSHashTable 就是一个集合,但是它是弱引用的.

static NSMutableDictionary *bookCenter = nil;

@implementation MASubCenter

+ (void)initialize
{
    if (self == [MASubCenter class]) {
        bookCenter = [NSMutableDictionary dictionary];
    }
}

// 创建书刊订阅号
+ (void)creatNumber:(NSString *)subNumber{
    NSHashTable *hashTable = [self existNumber:subNumber];
    if (hashTable == nil) {
        hashTable = [NSHashTable weakObjectsHashTable];
        [bookCenter setObject:hashTable forKey:subNumber];
    }
}

// 移除订阅号
+ (void)removeNumber:(NSString *)subNumber{
    NSHashTable *hashTable = [self existNumber:subNumber];
    if (hashTable) {
        [bookCenter removeObjectForKey:subNumber];
    }
}

// 添加用户
+ (void)addUser:(id<SubProtocol>)user wihtNumber:(NSString *)userNumber{
    NSHashTable *hashTable = [self existNumber:userNumber];
    [hashTable addObject:user];
}

// 移除用户
+ (void)removeUser:(id<SubProtocol>)user withNumber:(NSString *)userNumber{
    NSHashTable *hashTable = [self existNumber:userNumber];
    [hashTable removeObject:user];
}

// 发送消息
+ (void)sendMessage:(id)message withSubNumber:(NSString *)SubNumber{
    NSHashTable *hashTable = [self existNumber:SubNumber];
    if (hashTable) {
        NSEnumerator *enumerator = [hashTable objectEnumerator];
        id<SubProtocol> object = nil;
        while (object = [enumerator nextObject]) {
            if ([object respondsToSelector:@selector(subMessage:withSubNumber:)]) {
                [object subMessage:message withSubNumber:SubNumber];
            }
        }
    }
}

// 实现了代理方法
+ (NSHashTable *)existNumber:(NSString *)subStringNumber {
    return [bookCenter objectForKey:subStringNumber];
}

@end
