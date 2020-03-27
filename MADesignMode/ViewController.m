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
#import "MADelegateController.h"
#import "MABuilderModeController.h"
#import "MAFacadeModeController.h"
#import "ResponsibilityViewController.h"
#import "MACommandModeController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, copy)NSArray  *titleArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.tableView];
    self.titleArr = @[@"策略模式",@"MVC",@"MVP",@"MVVM",@"桥接模式", @"简单工厂", @"工厂方法",@"抽象工厂", @"享元模式",@"适配器模式", @"观察者模式", @"消息转发", @"构建者模式", @"外观模式", @"责任链模式", @"命令模式", @"待定"];
}

#pragma mark - TableView Delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        MAStrategyModeController *strategyCtr = [[MAStrategyModeController alloc] init];
        [self.navigationController pushViewController:strategyCtr animated:YES];
    } else if (indexPath.row == 1) {
        MVCViewController *mvcCtr = [[MVCViewController alloc] init];
        [self.navigationController pushViewController:mvcCtr animated:YES];
    } else if (indexPath.row == 2) {
        MVPViewController *mvpCtr = [[MVPViewController alloc] init];
        [self.navigationController pushViewController:mvpCtr animated:YES];
    } else if (indexPath.row == 3) {
        MVVMViewController *mvvmCtr = [[MVVMViewController alloc] init];
        [self.navigationController pushViewController:mvvmCtr animated:YES];
    } else if (indexPath.row == 4) {
        MABridgeModeController *bridgeCtr = [[MABridgeModeController alloc] init];
        [self.navigationController pushViewController:bridgeCtr animated:YES];
    } else if (indexPath.row == 5) {
        MASimpleFactoryController *simpleFac = [[MASimpleFactoryController alloc] init];
        [self.navigationController pushViewController:simpleFac animated:YES];
    } else if (indexPath.row == 6) {
        MAFactoryController *factoryCtr = [[MAFactoryController alloc] init];
        [self.navigationController pushViewController:factoryCtr animated:YES];
    } else if (indexPath.row == 7) {
        MAAbstractFactoryController *absFac = [[MAAbstractFactoryController alloc] init];
        [self.navigationController pushViewController:absFac animated:YES];
    } else if (indexPath.row == 8) {
        MAFlyWeightController *flyCtr = [[MAFlyWeightController alloc] init];
        [self.navigationController pushViewController:flyCtr animated:YES];
    } else if (indexPath.row == 9){
        MAAdapterModeController *adapCtr = [[MAAdapterModeController alloc] init];
        [self.navigationController pushViewController:adapCtr animated:YES];
    } else if (indexPath.row == 10){
        MAObserverModeController *observer = [[MAObserverModeController alloc] init];
        [self.navigationController pushViewController:observer animated:YES];
    } else if (indexPath.row == 11){
        MADelegateController *deleCtr = [[MADelegateController alloc] init];
        [self.navigationController pushViewController:deleCtr animated:YES];
    } else if (indexPath.row == 12) {
        MABuilderModeController *buildCtr = [[MABuilderModeController alloc] init];
        [self.navigationController pushViewController:buildCtr animated:YES];
    } else if (indexPath.row == 13) {
        MAFacadeModeController *facade = [[MAFacadeModeController alloc] init];
        [self.navigationController pushViewController:facade animated:YES];
    } else if (indexPath.row == 14) {
        ResponsibilityViewController *respon = [[ResponsibilityViewController alloc] init];
        [self.navigationController pushViewController:respon animated:YES];
    } else if (indexPath.row == 15) {
        MACommandModeController *command = [[MACommandModeController alloc] init];
        [self.navigationController pushViewController:command animated:YES];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 16;
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
