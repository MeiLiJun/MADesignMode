//
//  MASubRemote.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/19.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MARemote.h"

NS_ASSUME_NONNULL_BEGIN

@interface MASubRemote : MARemote

// 方向控制
- (void)up;
- (void)down;
- (void)left;
- (void)right;

@end

NS_ASSUME_NONNULL_END
