//
//  MACar.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/18.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MACar.h"

@implementation MACar

- (void)releaseBrakes{
    NSLog(@"松刹车");
}

- (void)pressBrakes{
    NSLog(@"踩刹车");
}

- (void)pressAccelerator{
    NSLog(@"踩油门");
}

- (void)releaseAccelerator{
    NSLog(@"松油门");
} 

@end
