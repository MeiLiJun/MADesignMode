//
//  MAAbstractFactoryController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAAbstractFactoryController.h"
#import "MARedViewFactory.h"
#import "MABlueViewFactory.h"

@interface MAAbstractFactoryController ()

@end

@implementation MAAbstractFactoryController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    /*
     抽象工厂
     1. 通过对象组合创建抽象产品
     2. 创建多个系列产品
     3. 必须修改父类的接口才能支持新的产品
     
     工厂方法
     1.通过类继承创建抽象产品
     2.创建一种产品
     3.子类化创建并重写工厂方法来创建新产品
     工厂方法: 多个产品抽象   抽象工厂: 是对工厂抽象
     */
    
    UIView *red = [MARedViewFactory colorView];
    UIButton *btn = [MARedViewFactory buttonView];
    [self.view addSubview:btn];
    [self.view addSubview:red];
}

@end
