//
//  MACoachDriver.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/18.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MACoachDriver.h"
#import "MACar.h"
#import "MATeaching.h"

@implementation MACoachDriver

+ (void)driveToLocation:(NSString *)location{
    [self teachDriving];
    NSLog(@"%@ 到达了", location);
}

+ (void)teachDriving{
    //驾驶汽车
    MACar *car = [[MACar alloc] init];
    [car releaseBrakes];    //松刹车
    [car pressAccelerator]; //踩油门
    
    // 到达位置的操作
    [car releaseBrakes];
    [car pressBrakes];
    
    
    //教倒车
    MATeaching *teach = [[MATeaching alloc ]init];
    [teach reversing];
}

@end
