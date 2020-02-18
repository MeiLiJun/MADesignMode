//
//  MVVMViewModel.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/16.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMModel.h"
#import "KVOController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MVVMViewModel : NSObject

@property (nonatomic, copy) NSString *contentStr;

- (void)setWithModel:(MVVMModel *)model;

- (void)viewModelPrintClick;

@end

NS_ASSUME_NONNULL_END
