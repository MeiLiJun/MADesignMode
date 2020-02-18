//
//  MVPView.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/16.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MVPView.h"

@interface MVPView ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *btnPrint;
    
@end

@implementation MVPView

- (instancetype)init
    {
        self = [super init];
        if (self) {
            self.backgroundColor = [UIColor grayColor];
            self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 300, 30)];
            
            self.label.textAlignment = NSTextAlignmentCenter;
            
            self.label.textColor = [UIColor blackColor];
            
            [self addSubview:self.label];
            
            self.btnPrint = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 50)];
            
            [self.btnPrint setTitle:@"来点我呀" forState:UIControlStateNormal];
            
            [self.btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
            
            
            [self addSubview:self.btnPrint];
        }
        return self;
    }

- (void)onPrintClick {
    if (_delegate && [_delegate respondsToSelector:@selector(viewShowBtnClick)]) {
        [_delegate viewShowBtnClick];
    }
}
    
- (void)showView:(NSString *)content {
    self.label.text = content;
}
    
@end
