//
//  MAFactoryController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAFactoryController.h"
#import "MAColorViewGenerator.h"
#import "MARedViewGenerator.h"
#import "MABlueViewGenerator.h"

@interface MAFactoryController ()

@end

@implementation MAFactoryController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    // 1.创建一个工厂类
    MAColorViewGenerator *colorGen = [[MARedViewGenerator alloc] init];
    CGRect rect = CGRectMake(0, 0, 300, 600);
    
    MAColorView *redView = [colorGen colorViewWithFrame:rect];
    
    // 添加
    [self.view addSubview:redView];
}

@end
