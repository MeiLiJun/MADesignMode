//
//  CommandReceiver.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CommandReceiver : NSObject{
    CGFloat _white;  // 白的
    CGFloat _alpha;  // 透明度
}

// 接收者的view
@property (nonatomic, strong) UIView *receiverView;

// 变暗的接口
- (void)mackeDarker:(CGFloat)pamameter;

// 变亮的接口
- (void)mackeLighter:(CGFloat)pamameter;

@end

NS_ASSUME_NONNULL_END
