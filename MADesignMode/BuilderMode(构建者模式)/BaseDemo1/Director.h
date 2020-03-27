//
//  Director.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Builder.h"

NS_ASSUME_NONNULL_BEGIN

@interface Director : NSObject

//创建传入的实现者
- (instancetype)initWithBuilder:(id<Builder>)builder;

//建造
- (NSString *)construct;
    

@end

NS_ASSUME_NONNULL_END
