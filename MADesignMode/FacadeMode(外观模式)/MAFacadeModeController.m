//
//  MAFacadeModeController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/18.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAFacadeModeController.h"
//#import "MATaximeter.h"
//#import "MACar.h"
#import "MACarDriver.h"
#import "MACoachDriver.h"

//添加需求 ： 添加一个教练，教学生学车，同事它也具备Car类的使用

@interface MAFacadeModeController ()

@end

@implementation MAFacadeModeController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    //外观模式
//    [MACarDriver driveToLocation:@"上海"];
    
    [MACoachDriver driveToLocation:@"北京"];
    
//    /***
//     一般调用方式
//     ***/
//    //启动计价器
//    MATaximeter *taximeter = [[MATaximeter alloc] init];
//    [taximeter start];
//    
//    //驾驶汽车
//    MACar *car = [[MACar alloc] init];
//    [car releaseBrakes];    //松刹车
//    [car pressAccelerator]; //踩油门
//    
//    // 到达位置的操作
//    [car releaseBrakes];
//    [car pressBrakes];
//    [taximeter stop];
}


@end
