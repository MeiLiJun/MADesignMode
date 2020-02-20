//
//  MABridgeModeController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/19.
//  Copyright © 2020年 MeiLj. All rights reserved.
//
//  思路: 把遥控器抽象出一个父类, 把电视机也抽象出一个父类
// 用抽象的遥控器对抽象电视机类进行引用,具体的实现由他们的子类来做

/*
 桥接模式的特点:
 1. 将依赖具体的实现,改为依赖抽象. 得到松耦合的状态
 2. 分离了接口和实现部分
 3. 提高了扩展性.
 */

#import "MABridgeModeController.h"

/** 普通方式 **/
#import "XiaoMiRemote.h"
#import "XiaoMiTV.h"
#import "AppleRemote.h"
#import "AppleTV.h"

#import "MASubRemote.h"
#import "MAXiaoMiTV.h"
#import "MAAppleTV.h"

@interface MABridgeModeController ()

@end

@implementation MABridgeModeController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];

    [self normalFunc];
    [self bridgeFunc];
}

- (void)normalFunc{
    NSLog(@"normalFunc");
    //普通方式
    XiaoMiTV *TV = [[XiaoMiTV alloc] init];
    XiaoMiRemote *remote = [[XiaoMiRemote alloc] init];
    remote.TV = TV;
    [remote up];
    
    AppleTV *TV2 = [[AppleTV alloc] init];
    AppleRemote *remote2 = [[AppleRemote alloc] init];
    remote2.TV = TV2;
    [remote2 action1];
    [remote2 up];
    
    //    remote.TV = TV2; 错误方式
    //    [remote up];
}

- (void)bridgeFunc{
    NSLog(@"bridgeFunc");
    MASubRemote *subRemote = [[MASubRemote alloc] init];
    subRemote.tv = [[MAXiaoMiTV alloc] init];
    [subRemote up];
    
    subRemote.tv = [[MAAppleTV alloc] init];
    [subRemote up];
    [subRemote down];
}

@end
