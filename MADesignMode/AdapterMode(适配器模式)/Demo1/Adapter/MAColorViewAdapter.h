//
//  MAColorViewAdapter.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TargetProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MAColorViewAdapter : NSObject <TargetProtocol>

@property (nonatomic, strong) id model; /**< 输入的模型数据 */

- (instancetype)initWithModel:(id)model;

@end

NS_ASSUME_NONNULL_END
