//
//  MASubRemote.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/19.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MASubRemote.h"

@implementation MASubRemote

// 方向控制
- (void)up {
    [super setCommand:@"up"];
}

- (void)down {
    [super setCommand:@"down"];
}

- (void)left {
    [super setCommand:@"left"];
}

- (void)right {
    [super setCommand:@"right"];
}

@end
