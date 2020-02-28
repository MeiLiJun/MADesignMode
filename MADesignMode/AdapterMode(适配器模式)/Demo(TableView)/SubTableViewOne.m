//
//  SubTableViewOne.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "SubTableViewOne.h"

@implementation SubTableViewOne

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    
    cell.textLabel.text = [self getObject:indexPath];
    return cell;
}

@end
