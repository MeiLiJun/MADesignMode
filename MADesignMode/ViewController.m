//
//  ViewController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/5.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "ViewController.h"
#import "MAStrategyModeController.h"

#import "MVCViewController.h"
#import "MVPViewController.h"
#import "MVVMViewController.h"
#import "MABridgeModeController.h"
#import "MASimpleFactoryController.h"
#import "MAFactoryController.h"
#import "MAAbstractFactoryController.h"
#import "MAFlyWeightController.h"
#import "MAAdapterModeController.h"
#import "MAObserverModeController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, copy)NSArray  *titleArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.tableView];
    self.titleArr = @[@"策略模式",@"MVC",@"MVP",@"MVVM",@"桥接模式", @"简单工厂", @"工厂方法",@"抽象工厂", @"享元模式",@"适配器模式", @"观察者模式", @"待定"];
}

#pragma mark - TableView Delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *jumpVc ;
    if (indexPath.row == 0) {
        MAStrategyModeController *strategyCtr = [[MAStrategyModeController alloc] init];
        jumpVc = strategyCtr;
    } else if (indexPath.row == 1) {
        MVCViewController *mvcCtr = [[MVCViewController alloc] init];
        jumpVc = mvcCtr;
    } else if (indexPath.row == 2) {
        MVPViewController *mvpCtr = [[MVPViewController alloc] init];
        jumpVc = mvpCtr;
    } else if (indexPath.row == 3) {
        MVVMViewController *mvvmCtr = [[MVVMViewController alloc] init];
        jumpVc = mvvmCtr;
    } else if (indexPath.row == 4) {
        MABridgeModeController *bridgeCtr = [[MABridgeModeController alloc] init];
        jumpVc = bridgeCtr;
    } else if (indexPath.row == 5) {
        MASimpleFactoryController *simpleFac = [[MASimpleFactoryController alloc] init];
        jumpVc = simpleFac;
    } else if (indexPath.row == 6) {
        MAFactoryController *factoryCtr = [[MAFactoryController alloc] init];
        jumpVc = factoryCtr;
    } else if (indexPath.row == 7) {
        MAAbstractFactoryController *absFac = [[MAAbstractFactoryController alloc] init];
        jumpVc = absFac;
    } else if (indexPath.row == 8) {
        MAFlyWeightController *flyCtr = [[MAFlyWeightController alloc] init];
        jumpVc = flyCtr;
    } else if (indexPath.row == 9){
        MAAdapterModeController *adapCtr = [[MAAdapterModeController alloc] init];
        jumpVc = adapCtr;
    } else if (indexPath.row == 10){
        MAObserverModeController *observer = [[MAObserverModeController alloc] init];
        jumpVc = observer;
    }
    [self.navigationController pushViewController:jumpVc animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 12;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableCell" forIndexPath:indexPath];
    cell.textLabel.text = self.titleArr[indexPath.row];
    return cell;
}


#pragma mark - Lazy
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.rowHeight  = 40;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"tableCell"];
    }
    return _tableView;
}
@end
