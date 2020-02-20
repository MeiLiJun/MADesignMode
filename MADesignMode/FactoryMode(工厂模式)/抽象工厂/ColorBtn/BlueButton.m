//
//  BlueButton.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "BlueButton.h"

@implementation BlueButton

+ (instancetype)buttonWithType:(UIButtonType)buttonType {
    [super buttonWithType:buttonType];
    
    BlueButton *btn = [[BlueButton alloc] initWithFrame:CGRectMake(0, 100, 300, 30)];
    [btn setTitle:@"蓝色" forState:UIControlStateNormal];
    btn.titleLabel.backgroundColor = [UIColor redColor];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    return btn;
}

@end
