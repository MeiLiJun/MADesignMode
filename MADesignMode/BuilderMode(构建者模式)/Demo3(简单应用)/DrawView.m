//
//  DrawView.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    [self setBackgroundColor:[UIColor redColor]];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.buildLabel, 100, 50, 80)];
    label.text = @"TZ";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    [self addSubview:label];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, self.buildButton, 100, 50)];
    [btn setTitle:@"Blue" forState:UIControlStateNormal];
    btn.titleLabel.backgroundColor = [UIColor redColor];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:btn];
    
    UIView *subView = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 100, self.buildSizeView)];
    [self addSubview:subView];
    
    UIImage *bkgImage = [UIImage imageNamed:@"tupian"];
    UIImageView *bkgView = [[UIImageView alloc] initWithImage:bkgImage];
    [self addSubview:bkgView];
}

@end
