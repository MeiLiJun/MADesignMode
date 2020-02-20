//
//  MAFlowerFactory.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAFlowerFactory.h"

@implementation MAFlowerFactory

- (MAFlowers *)flowerViewWithType:(FlowerType)type{
    // 1. 懒加载flowerPools, 初始化享元池.
    if (self.flowerPools == nil) {
        self.flowerPools = [NSMutableDictionary dictionaryWithCapacity:kTotalNumberFlower];
    }
    
    // 2. 去享元池里面取
    MAFlowers *flower = [self.flowerPools objectForKey:[NSNumber numberWithInteger:type]];
    
    // 3. 如果没取到就判断
    if (flower == nil) {
        // 1. 创建花
        flower = [[MAFlowers alloc] init];
        
        // 2. 根据传进来的类型, 去选择对应的类型
        switch (type) {
            case kRedFlower:
                flower.flowerColor = @"红色的花";
                flower.flowerName = @"红玫瑰";
                break;
                
            case kBlueFlower:
                flower.flowerColor = @"蓝色的花";
                flower.flowerName = @"蓝玫瑰";
                break;
                
            case kYellowFlower:
                flower.flowerColor = @"黄色的花";
                flower.flowerName = @"野菊花";
                break;
                
            default:
                break;
        }
        
        // 3. 把创建的话,添加到享元池里面
        [self.flowerPools setObject:flower forKey:[NSNumber numberWithInteger:type]];
    }
    return flower;
}

- (void)detailsType {
    NSArray *array = [self.flowerPools allKeys];
    // 打印
    for (NSNumber *key in array) {
        NSLog(@"di zhi = %@,  key = %@", self.flowerPools[key], key);
    }
}

@end
