
//
//  MAColorViewAdapter.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAColorViewAdapter.h"

@implementation MAColorViewAdapter

- (instancetype)initWithModel:(id)model{
    self = [super init];
    if (self) {
        self.model = model;
    }
    return self;
}

- (UIColor *)smallViewColor{
    return nil;
}

- (NSString *)userName{
    return nil;
}

- (NSString *)password{
    return nil;
}

@end
