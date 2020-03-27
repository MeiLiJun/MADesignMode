//
//  DrawBuilder.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DrawView.h"

NS_ASSUME_NONNULL_BEGIN

@interface DrawBuilder : NSObject

- (CGFloat)buildLabel;      //构建Label
- (CGFloat)buildButton;     //构建Button
- (CGFloat)buildSizeView;   //构建SizeView

- (DrawView *)loadView;     //构建结果

@end

NS_ASSUME_NONNULL_END
