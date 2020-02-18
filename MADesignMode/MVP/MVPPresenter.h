//
//  MVPPresenter.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/16.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPModel.h"
#import "MVPView.h"

NS_ASSUME_NONNULL_BEGIN

@interface MVPPresenter : NSObject <MVPDelegate>
    
@property (nonatomic, strong) MVPModel *model;
@property (nonatomic, strong) MVPView *view;
    
- (void)usageLogic;

@end

NS_ASSUME_NONNULL_END
