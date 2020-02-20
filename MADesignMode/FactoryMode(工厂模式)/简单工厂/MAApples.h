//
//  MAApples.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAFruits.h"

NS_ASSUME_NONNULL_BEGIN

@interface MAApples : MAFruits

- (void)freshApple; /**< 新鲜的苹果 */   // 开闭原则

@end

NS_ASSUME_NONNULL_END
