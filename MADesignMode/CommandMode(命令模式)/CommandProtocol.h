//
//  CommandProtocol.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CommandProtocol <NSObject>

// 执行命令
- (void)excute;

// 撤销命令
- (void)backExcute;

@end

NS_ASSUME_NONNULL_END
