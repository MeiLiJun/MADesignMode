//
//  MARedViewFactory.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MARedViewFactory.h"
#import "RedSubView.h"
#import "RedButton.h"

@implementation MARedViewFactory

+ (UIView *)colorView {
    return [[RedSubView alloc] init];
}

+ (UIButton *)buttonView {
    return [RedButton buttonWithType:UIButtonTypeCustom];
}

@end
