//
//  Person.m
//  Demo
//
//  Created by wangmin on 2017/4/19.
//  Copyright © 2017年 wangmin. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    self = [super init];
    if(self)
    {
      
    }
    return self;
}

- (void)loadLog
{
    if(self.log)
    {
        self.log();
    }
}

@end
