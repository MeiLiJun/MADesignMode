//
//  MABaseTableView.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MABaseTableView.h"

@interface MABaseTableView ()

@property (nonatomic, strong) NSMutableArray *datas;

@end

@implementation MABaseTableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.datas = [NSMutableArray arrayWithObjects:@"1234", @"678", @"666", nil];
        self.dataSource = self;
        self.delegate = self;
    }
    return self;
}


#pragma makr - MABaseTableViewProtocol
- (id)getObject:(NSIndexPath *)indexPath{
    return self.datas[indexPath.row];
}

// 添加/ 删减数据
- (void)dataRefresh:(NSMutableArray *)mutableArray{
    if (self.datas == nil) {
        self.datas = mutableArray;
    } else {
        [self.datas removeAllObjects];
        [self.datas addObjectsFromArray:mutableArray];
    }
}

#pragma mark - 数据源方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellName = @"cellName";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    
    // 设置 Cell...
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    
    return cell;
}

@end
