//
//  MACustomTextField.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/11.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MACustomTextField.h"

@implementation MACustomTextField

- (BOOL)validate{
    BOOL result = [self.inputValidate validateInputTextField:self];
    if (!result) {
        NSLog(@"---%@",self.inputValidate.attributeInputStr);
    }
    return result;
}

@end
