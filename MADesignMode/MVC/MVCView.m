//
//  MVCView.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/16.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MVCView.h"

@implementation MVCView

- (instancetype)init
    {
        self = [super init];
        if (self) {
            self.backgroundColor = [UIColor grayColor];
            
            self.btnPrint = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
            [self.btnPrint setTitle:@"print" forState:UIControlStateNormal];
            [self.btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:self.btnPrint];
        }
        return self;
    }
    
- (void)onPrintClick{
    if (self.delegate && [self.delegate respondsToSelector:@selector(onPrintBtnClick)]) {
        [self.delegate onPrintBtnClick];
    }
}
    
- (void)printOnView:(MVCModel *)model{
    NSLog(@"在MVCView中打印出的内容:%@", model.content);
}

@end
