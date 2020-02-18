//
//  MVVMViewController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/16.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MVVMViewController.h"

#import "MVVMModel.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"

@interface MVVMViewController ()
    
@property (nonatomic, strong) MVVMView *mvvmView;
@property (nonatomic, strong) MVVMModel *model;
@property (nonatomic, strong) MVVMViewModel *viewModel;

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _model = [MVVMModel new];
    _model.content = @"MVVM架构模式";
    
    _mvvmView = [MVVMView new];
    _mvvmView.frame = self.view.bounds;
    [self.view addSubview:_mvvmView];
    
    _viewModel = [MVVMViewModel new];
        
    [_viewModel setWithModel:_model];
    [_mvvmView showView:_viewModel];
}


@end
