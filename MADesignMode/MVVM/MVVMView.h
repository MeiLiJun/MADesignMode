//
//  MVVMView.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/16.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVMViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MVVMView : UIView

@property (nonatomic, strong) UILabel *labelContent;
@property (nonatomic, strong) UIButton *btnPrint;

@property (nonatomic, strong) MVVMViewModel *vm;

- (void)showView:(MVVMViewModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
