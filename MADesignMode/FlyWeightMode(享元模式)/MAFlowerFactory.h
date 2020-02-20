//
//  MAFlowerFactory.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MAFlowers.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    kRedFlower, // 0
    kBlueFlower, // 1
    kYellowFlower, // 2
    kTotalNumberFlower  // 用于计数的.
} FlowerType;

@interface MAFlowerFactory : NSObject

// 缓存池, 存放享元对象
@property (nonatomic, strong) NSMutableDictionary *flowerPools;

// 创建花的工厂方法
- (MAFlowers *)flowerViewWithType:(FlowerType)type;

- (void)detailsType;

@end

NS_ASSUME_NONNULL_END
