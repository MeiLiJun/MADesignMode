//
//  DrawDirector.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/5.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "DrawDirector.h"

@implementation DrawDirector

+ (DrawView *)createView:(DrawBuilder *)builder{
    DrawView *drawView = [builder loadView];
    return drawView;
}

@end
