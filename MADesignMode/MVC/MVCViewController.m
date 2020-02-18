//
//  MVCViewController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/16.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MVCViewController.h"
#import "MVCView.h"
#import "MVCModel.h"

@interface MVCViewController () <MVCViewDelegate>
    
@property (nonatomic, strong)MVCView    *myView;
@property (nonatomic, strong)MVCModel   *myModel;

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myView = [[MVCView alloc] init];
    self.myView.frame = self.view.bounds;
    self.myView.delegate = self;
    [self.view addSubview:self.myView];
    
    self.myModel = [[MVCModel alloc] init];
    self.myModel.content = @"mvc内容模式";
    
    [self.myView printOnView:self.myModel];
}

#pragma mark - MVCViewDelegate

- (void)onPrintBtnClick{
    int rand = arc4random_uniform(10);
    _myModel.content = [NSString stringWithFormat:@"改变的数据 %d",rand+1];
    [self.myView printOnView:_myModel];
}

@end
