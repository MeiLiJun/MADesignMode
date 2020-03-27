//
//  Director.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "Director.h"

@interface Director ()

@property (nonatomic, copy) id<Builder> builder;

@end

@implementation Director

- (instancetype)initWithBuilder:(id<Builder>)builder{
    self = [super init];
    if (self) {
        _builder = builder;
    }
    return self;
}

//建造
- (NSString *)construct{
    
    return [self.builder buildPart];
}

@end
