//
//  MARemote.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/19.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MARemote.h"

@implementation MARemote

- (void)setCommand:(NSString *)commmand{
    [self.tv loadCommand:commmand];
}

@end
