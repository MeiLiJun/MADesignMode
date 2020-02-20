//
//  XiaoMiRemote.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/19.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "XiaoMiRemote.h"

@implementation XiaoMiRemote

- (void)up {
    [self.TV loadCommand:@"up"];
}

- (void)down {
    [self.TV loadCommand:@"down"];
}

- (void)left {
    [self.TV loadCommand:@"left"];
}

- (void)right {
    [self.TV loadCommand:@"right"];
}

@end
