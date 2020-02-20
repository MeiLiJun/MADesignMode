//
//  MAFlyWeightController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAFlyWeightController.h"
#import "MAFlowerFactory.h"
#import "MAFlowers.h"

@interface MAFlyWeightController ()

@end

@implementation MAFlyWeightController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    // 初始化工厂
    MAFlowerFactory *factory = [[MAFlowerFactory alloc] init];
    
    NSMutableArray *arrayFlowers = [[NSMutableArray alloc] init];
    // for循环调用
    for (int i = 0; i < 5; ++i) { //尝试 i= 5000  工厂方法调用和简单直接创建的 内存消耗对比
        FlowerType flowerType = arc4random_uniform(kTotalNumberFlower);
        
        // 使用缓存池工厂方法来调用.类型是随机的
        MAFlowers *flower = [factory flowerViewWithType:flowerType];
        
        // 简单的创建方式
//        MAFlowers *flower = [[MAFlowers alloc] init];
        
        [arrayFlowers addObject:flower];
        
        // 打印详情
        [factory detailsType];
    }
}

@end
