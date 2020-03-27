//
//  StudentModel.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "BaseCopyObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface StudentModel : BaseCopyObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *age;

@end

NS_ASSUME_NONNULL_END
