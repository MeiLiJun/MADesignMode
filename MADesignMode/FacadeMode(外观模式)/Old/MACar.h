//
//  MACar.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/18.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MACar : NSObject

- (void)releaseBrakes;  // 松刹车

- (void)pressBrakes;    // 踩刹车

- (void)pressAccelerator;   // 踩油门

- (void)releaseAccelerator; //松油门

@end

NS_ASSUME_NONNULL_END
