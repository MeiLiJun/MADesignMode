//
//  ColorView.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorModel.h"
#import "TargetProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ColorView : UIView

//- (void)loadModel:(ColorModel *)model;

// 加载数据, 已经实现了TargetProtocol里面的要求
- (void)loadModel:(id <TargetProtocol>)model;


@end

NS_ASSUME_NONNULL_END
