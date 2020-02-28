//
//  MANewModelAdapter.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MANewModelAdapter.h"
#import "ColorNewModel.h"

@implementation MANewModelAdapter

- (UIColor *)smallViewColor{
    ColorNewModel *newModel = self.model;
    
    // 如果传入的数据, 是二进制的. 这边就需要判断
    if ([newModel.smallViewColor isEqualToString:@"blue"]) {
        return [UIColor  blueColor];
    } else {
        return [UIColor  blueColor];
    }
}

- (NSString *)userName{
    ColorNewModel *model = self.model;
    return model.userName;
}

- (NSString *)password{
    ColorNewModel *model = self.model;
    return model.password;
}

@end
