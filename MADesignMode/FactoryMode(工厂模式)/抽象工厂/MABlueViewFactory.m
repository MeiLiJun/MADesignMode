//
//  MABlueViewFactory.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MABlueViewFactory.h"
#import "BlueSubView.h"
#import "BlueButton.h"

@implementation MABlueViewFactory

+ (UIView *)colorView {
    return [[BlueSubView alloc] init];
}

+ (UIButton *)buttonView {
    return [BlueButton buttonWithType:UIButtonTypeCustom];
}

@end
