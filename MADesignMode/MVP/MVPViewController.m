//
//  MVPViewController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/16.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MVPViewController.h"

#import "MVPPresenter.h"
#import "MVPModel.h"
#import "MVPView.h"

@interface MVPViewController ()

@property (nonatomic, strong) MVPPresenter *presenter;
@property (nonatomic, strong) MVPView  *mvpView;
@property (nonatomic, strong) MVPModel *mvpModel;

@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _presenter = [[MVPPresenter alloc] init];
    
    _mvpView = [[MVPView alloc] init];
    _mvpView.frame = self.view.bounds;
    [self.view addSubview:_mvpView];
    
    _mvpModel = [MVPModel new];
    _mvpModel.content = @"MVP的模式";
    
    _presenter.view  = _mvpView;
    _presenter.model = _mvpModel;
    [_presenter usageLogic];
}


@end
