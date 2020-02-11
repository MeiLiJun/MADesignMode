//
//  MACustomTextField.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/11.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MATextFieldValidate.h"

NS_ASSUME_NONNULL_BEGIN

@interface MACustomTextField : UITextField

// 抽象的策略
@property (nonatomic, strong) MATextFieldValidate *inputValidate;

// 验证是否符合要求
- (BOOL)validate;

@end

NS_ASSUME_NONNULL_END
