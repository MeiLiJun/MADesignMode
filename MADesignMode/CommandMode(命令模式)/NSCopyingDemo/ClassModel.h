//
//  ClassModel.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "BaseCopyObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface ClassModel : BaseCopyObject

@property (nonatomic, copy) NSString *className;
@property (nonatomic, copy) NSArray *students;

@end

NS_ASSUME_NONNULL_END
