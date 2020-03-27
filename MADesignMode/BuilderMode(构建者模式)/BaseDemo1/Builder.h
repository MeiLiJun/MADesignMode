//
//  Builder.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//构建者
@protocol Builder <NSObject>

//构建部分
- (NSString *)buildPart;

@end

NS_ASSUME_NONNULL_END
