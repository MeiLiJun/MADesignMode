//
//  MASimpleFactoryController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MASimpleFactoryController.h"
#import "MAFruitsFactory.h"

@interface MASimpleFactoryController ()

@end

@implementation MASimpleFactoryController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];

    // 在水果工厂里面创建出苹果
    MAFruits *fruits = [MAFruitsFactory fruitsFactory:kApple];
    [fruits sweet];
    
    // 在水果工厂里面创建出苹果, 调用私有的方法
    MAApples *apples = (MAApples *)[MAFruitsFactory fruitsFactory:kApple];
    [apples freshApple];
    
    // 在水果工厂里面创建出橘子, 调用私有的方法
    MAOranges *orange = (MAOranges *)[MAFruitsFactory fruitsFactory:kOrange];
    [orange acidOrange];
}


@end
