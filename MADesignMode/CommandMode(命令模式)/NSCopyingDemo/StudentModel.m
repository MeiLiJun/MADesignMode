//
//  StudentModel.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "StudentModel.h"

@implementation StudentModel

- (void)copyOperationWithObject:(StudentModel *)object{
    object.name = self.name;
    object.age = self.age;
}

@end
