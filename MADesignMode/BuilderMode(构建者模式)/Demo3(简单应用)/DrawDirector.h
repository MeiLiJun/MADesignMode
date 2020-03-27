//
//  DrawDirector.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/5.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DrawView.h"
#import "DrawBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface DrawDirector : NSObject

+ (DrawView *)createView:(DrawBuilder *)builder;

@end

NS_ASSUME_NONNULL_END
