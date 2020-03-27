//
//  BaseCopyObject.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "BaseCopyObject.h"

@implementation BaseCopyObject

- (id)copyWithZone:(NSZone *)zone{
    BaseCopyObject *copyObj = [[self class] allocWithZone:zone];
    
    // 赋值操作
    [self copyOperationWithObject:copyObj];
    return copyObj;
}

// 子类去实现
- (void)copyOperationWithObject:(id)object {
}

@end
