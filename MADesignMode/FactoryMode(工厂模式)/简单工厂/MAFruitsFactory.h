//
//  MAFruitsFactory.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MAFruits.h"
#import "MAApples.h"
#import "MAOranges.h"
#import "MABananas.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    kApple,
    kOrange,
    kBanana
} FruitsType;

@interface MAFruitsFactory : NSObject

// 创造水果的工厂
+ (MAFruits *)fruitsFactory:(FruitsType)type;

@end

NS_ASSUME_NONNULL_END
