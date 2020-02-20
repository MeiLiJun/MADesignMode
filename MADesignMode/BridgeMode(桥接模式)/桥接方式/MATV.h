//
//  MATV.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/19.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MATV : NSObject

// 电视机提供给外界调用的一个方法
- (void)loadCommand:(NSString *)command;

@end

NS_ASSUME_NONNULL_END
