//
//  MATextFieldValidate.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/11.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MATextFieldValidate : NSObject

// 输入判定策略 YES 表示测试通过.No 表示测试不通过
- (BOOL)validateInputTextField:(UITextField *)textField;

/**< 属性字符串 */
@property (nonatomic, copy) NSString *attributeInputStr;

@end

NS_ASSUME_NONNULL_END
