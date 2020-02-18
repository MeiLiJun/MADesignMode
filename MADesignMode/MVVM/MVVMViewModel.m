//
//  MVVMViewModel.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/16.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MVVMViewModel.h"

@interface MVVMViewModel ()
@property (nonatomic, strong) MVVMModel *model;
@end

@implementation MVVMViewModel

- (void)setWithModel:(MVVMModel *)model{
    self.model = model;
    self.contentStr = model.content;
}

- (void)viewModelPrintClick{
    self.model.content = @"MVVMModel";
    
    int num = arc4random_uniform(20);
    self.model.content = [NSString stringWithFormat:@"%d",num];
    self.contentStr = self.model.content;
}

@end
