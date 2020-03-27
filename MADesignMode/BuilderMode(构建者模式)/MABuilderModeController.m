//
//  MABuilderModeController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MABuilderModeController.h"
#import "Director.h"
#import "ConcreateBulid.h"

#import "MacDirector.h"
#import "MacComputerBuilder.h"

#import "DrawDirector.h"
#import "SubDrawBuilderOne.h"
#import "SubDrawBuilderTwo.h"

@interface MABuilderModeController ()

@end

@implementation MABuilderModeController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    /*
     使用构建者模式需求： 客户需要一台苹果电脑 电脑有 cpu 显卡 主板 系统
     组装者（指导者）： Director
     构建者        ： 苹果电脑 （协议）
     生成者        ： cpu 显卡 主板 系统
     */
    
//    [self testDemo1];
//    [self testDemo2]; //对 Demo1 的扩展
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self testDemo3];
}

- (void)testDemo3{
    //创建
    DrawBuilder *builder = [[SubDrawBuilderOne alloc] init];
//    DrawBuilder *builder2 = [[SubDrawBuilderTwo alloc] init];
    
    //组装
    DrawView *drawView = [DrawDirector createView:builder];
    drawView.center = self.view.center;
    [self.view addSubview:drawView];
}

- (void)testDemo2{
    //第一种构建方式
//    id <MacBuilder> builder = [[MacComputerBuilder alloc] init];
//    //构建者
//    MacDirector *director = [[MacDirector alloc] initWithBuilder:builder];
//    [director constructCpu:@"intel i8" display:@"144 Hz" mainBoard:@"AOC" os:@"win 9"];
    
    //第二种构建方式
    id <MacBuilder> builder = [[MacComputerBuilder alloc] init];
    //构建者
    id <MacComputerProtocol> com = [[[[[builder buildCpu:@"intel i8"] buildDisplay:@"7 Color"] buildMainboard:@"AOC"] buildOS:@"win 10"] build];
    NSLog(@"com  = %@", com);
}

- (void)testDemo1{
    //1. 创建生成者 知道要做的产品
    ConcreateBulid *bulider = [[ConcreateBulid alloc] init];
    
    
    //2. 创建承包商
    Director *director = [[Director alloc] initWithBuilder:bulider];
    
    //3. 交付产品
    NSString *str = [director construct];
    NSLog(@"str = %@", str);
    
    
    //和承包商是聚合关系，所以也可以自行创建产品
    NSString *str2 = [bulider buildPart];
    NSLog(@"str2 = %@", str2);
}

@end
