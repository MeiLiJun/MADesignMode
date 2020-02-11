//
//  LetterTextFieldValidate.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/11.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "LetterTextFieldValidate.h"

@implementation LetterTextFieldValidate

- (BOOL)validateInputTextField:(UITextField *)textField{
    if (textField.text.length == 0) {
        self.attributeInputStr = @"字母不能是空的";
        return nil;
    }
    
    // ^[a-zA-Z]*$ 从开头(^)到结尾($), 有效字符集([a-zA-Z])或者更多(*)个字符
    NSRegularExpression *expression = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    NSUInteger numberOfMatches = [expression numberOfMatchesInString:[textField text] options:NSMatchingAnchored range:NSMakeRange(0, [textField text].length)];
    
    //    NSString *outLatter = nil;
    // 进行判断,匹配不符合表示0的话, 就走下面的逻辑
    if (numberOfMatches == 0) {
        self.attributeInputStr = @"不全是字母, 输入有误,请重新输入";
    } else {
        self.attributeInputStr = @"输入正确,全部是字母";
    }
    
    return self.attributeInputStr == nil ? YES : NO;
}

@end
