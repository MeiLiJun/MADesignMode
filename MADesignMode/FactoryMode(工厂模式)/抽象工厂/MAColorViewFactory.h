//
//  MAColorViewFactory.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MAColorViewFactory : NSObject

// 生产红色的View
+ (UIView *)colorView;

// 生产蓝色的UIButton
+ (UIButton *)buttonView;

@end

NS_ASSUME_NONNULL_END
