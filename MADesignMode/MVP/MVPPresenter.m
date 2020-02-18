//
//  MVPPresenter.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/16.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MVPPresenter.h"

@implementation MVPPresenter
    
- (void)usageLogic{
    NSString *str = self.model.content;
    
    self.view.delegate = self;
    [self.view showView:str];
}

- (void)viewShowBtnClick{
    int num = arc4random_uniform(20);
    self.model.content = [NSString stringWithFormat:@"mvp--%d-",num];
    
    [_view showView:_model.content];
}
    
@end
