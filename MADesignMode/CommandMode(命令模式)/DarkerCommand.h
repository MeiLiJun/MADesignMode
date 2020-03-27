//
//  DarkerCommand.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CommandProtocol.h"
#import "CommandReceiver.h"

NS_ASSUME_NONNULL_BEGIN

@interface DarkerCommand : NSObject <CommandProtocol>

// 绑定接收器
- (instancetype)initWithReceiver:(CommandReceiver *)receiver paramter:(CGFloat)paramter;

@end

NS_ASSUME_NONNULL_END
