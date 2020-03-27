//
//  BaseCopyObject.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseCopyObject : NSObject <NSCopying>

// 子类不要重载
- (id)copyWithZone:(NSZone *)zone;

// 子类去实现
- (void)copyOperationWithObject:(id)object;

@end

NS_ASSUME_NONNULL_END
