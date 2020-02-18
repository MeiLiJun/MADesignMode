//
//  MVCView.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/16.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVCModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol MVCViewDelegate <NSObject>

- (void)onPrintBtnClick;

@end

@interface MVCView : UIView
    
- (void)printOnView:(MVCModel *)model;
    
@property (nonatomic, weak)id<MVCViewDelegate> delegate;
@property (nonatomic, strong) UIButton *btnPrint;

@end

NS_ASSUME_NONNULL_END
