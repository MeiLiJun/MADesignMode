//
//  ViewController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/5.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "ViewController.h"
#import "MAStrategyModeController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, copy)NSArray  *titleArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.tableView];
    self.titleArr = @[@"策略模式",@"待定"];
}

#pragma mark - TableView Delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *jumpVc ;
    if (indexPath.row == 0) {
        MAStrategyModeController *strategyCtr = [[MAStrategyModeController alloc] init];
        jumpVc = strategyCtr;
    }
    [self.navigationController pushViewController:jumpVc animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
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
