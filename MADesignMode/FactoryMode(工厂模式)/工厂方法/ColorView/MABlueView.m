//
//  MABlueView.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MABlueView.h"

@implementation MABlueView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
        
        UIImage *backgroundImage = [UIImage imageNamed:@"tupian2"];
        UIImageView *backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
        [self addSubview:backgroundView];
    }
    return self;
}

@end
