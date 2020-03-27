//
//  DrawBuilder.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "DrawBuilder.h"

@implementation DrawBuilder

- (CGFloat)buildLabel{
    return 0;
}
- (CGFloat)buildButton{
    return 0;
}
- (CGFloat)buildSizeView{
    return 0;
}

- (DrawView *)loadView{
    DrawView *view = [[DrawView alloc] initWithFrame:CGRectMake(0, 0, 200, 300)];
    view.buildLabel    = [self buildLabel];
    view.buildButton   = [self buildButton];
    view.buildSizeView = [self buildSizeView];
    return view;
}

@end
