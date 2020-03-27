//
//  MACarDriver.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/18.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MACarDriver.h"
#import "MACar.h"
#import "MATaximeter.h"

@implementation MACarDriver

+ (void)driveToLocation:(NSString *)location{
    //启动计价器
    MATaximeter *taximeter = [[MATaximeter alloc] init];
    [taximeter start];
    
    //驾驶汽车
    MACar *car = [[MACar alloc] init];
    [car releaseBrakes];    //松刹车
    [car pressAccelerator]; //踩油门
    
    // 到达位置的操作
    [car releaseBrakes];
    [car pressBrakes];
    [taximeter stop];
}

@end
