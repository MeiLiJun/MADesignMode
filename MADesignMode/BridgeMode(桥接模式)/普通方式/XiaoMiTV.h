//
//  XiaoMiTV.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/19.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XiaoMiTV : NSObject

// 电视提供给外界的接口
- (void)loadCommand:(NSString *)command;

@end

NS_ASSUME_NONNULL_END
