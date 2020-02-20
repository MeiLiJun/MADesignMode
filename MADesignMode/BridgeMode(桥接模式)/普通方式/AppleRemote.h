//
//  AppleRemote.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/19.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppleTV.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppleRemote : NSObject

@property (nonatomic, strong) AppleTV *TV;

// 方向控制
- (void)up;
- (void)down;
- (void)left;
- (void)right;

- (void)action1;
- (void)action2;

@end

NS_ASSUME_NONNULL_END
