//
//  MABaseTableViewProtocol.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MABaseTableViewProtocol <UITableViewDelegate, UITableViewDataSource>

// 子类获取数据的接口
- (id)getObject:(NSIndexPath *)indexPath;

// 给外界提供的接口
- (void)dataRefresh:(NSMutableArray *)mutableArray;

@end

NS_ASSUME_NONNULL_END
