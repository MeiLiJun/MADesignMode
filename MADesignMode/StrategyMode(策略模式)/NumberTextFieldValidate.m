//
//  NumberTextFieldValidate.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/11.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "NumberTextFieldValidate.h"

@implementation NumberTextFieldValidate

- (BOOL)validateInputTextField:(UITextField *)textField{
    if (textField.text.length == 0) {
        self.attributeInputStr = @"字母不能是空的";
        return nil;
    }
    
    NSRegularExpression *expression = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    
    NSUInteger *matchNumbers = [expression numberOfMatchesInString:textField.text options:NSMatchingAnchored range:NSMakeRange(0, textField.text.length)];
    
    if (matchNumbers == 0) {
        self.attributeInputStr = @"不全是数字, 输入有误,请重新输入";
    } else {
        self.attributeInputStr = @"输入数字,全部是字母";
    }
    return self.attributeInputStr == nil ? YES : NO;
}

@end
