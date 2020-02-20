//
//  AppleRemote.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/19.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "AppleRemote.h"

@implementation AppleRemote

- (void)up {
    [self.TV loadCommandApple:@"up"];
}

- (void)down {
    [self.TV loadCommandApple:@"down"];
}

- (void)left {
    [self.TV loadCommandApple:@"left"];
}

- (void)right {
    [self.TV loadCommandApple:@"right"];
}

- (void)action1 {
    [self.TV loadCommandApple:@"action1"];
}

- (void)action2 {
    [self.TV loadCommandApple:@"action2"];
};

@end
