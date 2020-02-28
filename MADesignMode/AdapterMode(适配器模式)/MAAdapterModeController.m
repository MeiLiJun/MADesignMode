//
//  MAAdapterModeController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAAdapterModeController.h"

#import "ColorView.h"
#import "ColorModel.h"
#import "ColorNewModel.h"
#import "MANewModelAdapter.h"

#import "SubTableViewOne.h"

@interface MAAdapterModeController ()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation MAAdapterModeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //  controller 就是个适配器   数据: 适配者. 数据转化成了UI
    //  目标<UITableViewDataSource,UITableViewDelegate>
    /*
     适配器模式: 1.目标协议   2.适配者   3.适配器
     1.类适配器: 适配器是继承咋们适配者的
     2.对象适配器: 适配器是引用咱们的适配者的
     
     桥接模式跟适配器的区别:
     适配器: 改变已有的两个接口, 让他们相兼容. (组件之间的适配, 音视频方面, SDK跟自己写的代码之间适配)
     桥接模式:分离抽象化和实现类. 两者的接口可以不同,主要是在于分离
     
     桥接模式先有桥, 才有两端的实现.
     适配器模式是先有两边的, 才有适配器
     */
    
//    [self funDemo1];
    [self funDemoTableView];
}

- (void)funDemo1{
    ColorView *colorView = [[ColorView alloc] initWithFrame:self.view.bounds];
    
    // 赋值模型
    ColorNewModel *model = [[ColorNewModel alloc] init];
    model.smallViewColor = @"blue";
    model.userName = @"张三";
    model.password = @"1-1-1-1";
    
    
    /***
     Common 方式
     使用ColorModel 时正常，当换成ColorNewModel （smallViewColor 属性类型改变）
     则会crash, 不能够对新的数据类型容错处理
     ***/
    //    [colorView loadModel:model];  // -- crash
    
    /***
     Adapter 模式
     ***/
    MANewModelAdapter *newModelAdapter = [[MANewModelAdapter alloc] initWithModel:model];
    [colorView loadModel:newModelAdapter];
    
    // 添加
    [self.view addSubview:colorView];
}

- (void)funDemoTableView{
    id <MABaseTableViewProtocol> subTableView = [[SubTableViewOne alloc] initWithFrame:self.view.bounds];
    
    self.array = [NSMutableArray array];
    [self.array addObject:@"6666"];
    [self.array addObject:@"888"];
    
    [subTableView dataRefresh:self.array];
    [self.view addSubview:(id)subTableView];
}

@end
