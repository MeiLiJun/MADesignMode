//
//  ClassModel.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "ClassModel.h"

@implementation ClassModel

- (void)copyOperationWithObject:(ClassModel *)object{
    object.className = self.className;
    //    object.students = self.students;
    
    // 深拷贝
    object.students = [[NSArray alloc] initWithArray:self.students copyItems:YES];
}

@end
