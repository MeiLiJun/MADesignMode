//
//  MATeaching.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/18.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MADrive.h"

NS_ASSUME_NONNULL_BEGIN

@interface MATeaching : MADrive

- (void)start;  //开

- (void)stop;   //停止

- (void)reversing; //倒车入库

@end

NS_ASSUME_NONNULL_END
