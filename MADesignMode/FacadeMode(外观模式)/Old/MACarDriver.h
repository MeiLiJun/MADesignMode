//
//  MACarDriver.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/18.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MACarDriver : NSObject

// 到达指定的位置
+ (void)driveToLocation:(NSString *)location;

@end

NS_ASSUME_NONNULL_END
