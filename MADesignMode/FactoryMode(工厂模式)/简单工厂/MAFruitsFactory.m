//
//  MAFruitsFactory.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAFruitsFactory.h"

@implementation MAFruitsFactory

+ (id)fruitsFactory:(FruitsType)type{
    // 创建空的对象.在工厂方法里面进行水果的制造
    MAFruits *fruits = nil;
    
    switch (type) {
        case kApple:
            fruits = [[MAApples alloc] init];
            break;
            
        case kOrange:
            fruits = [[MAOranges alloc] init];
            break;
        case kBanana:
            fruits = [[MABananas alloc] init];
        default:
            break;
    }
    return fruits;
}

@end
