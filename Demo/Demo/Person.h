//
//  Person.h
//  Demo
//
//  Created by wangmin on 2017/4/19.
//  Copyright © 2017年 wangmin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, strong) void (^log)();

- (void)loadLog;
@end
