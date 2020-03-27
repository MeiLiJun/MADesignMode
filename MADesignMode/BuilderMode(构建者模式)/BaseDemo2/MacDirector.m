//
//  MacDirector.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MacDirector.h"

@interface MacDirector ()

@property (nonatomic, strong) id<MacBuilder> builder;

@end

@implementation MacDirector

- (instancetype)initWithBuilder:(id<MacBuilder>)builder{
    self = [super init];
    if (self) {
        _builder = builder;
    }
    return self;
}

- (void)constructCpu:(NSString *)cpu display:(NSString *)display mainBoard:(NSString *)mainboard os:(NSString *)os{
    [[[[[_builder buildCpu:cpu] buildDisplay:display] buildMainboard:mainboard] buildOS:os] build];
}

@end
