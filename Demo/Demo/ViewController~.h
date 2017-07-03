//
//  ViewController.h
//  Demo
//
//  Created by wangmin on 2017/1/18.
//  Copyright © 2017年 wangmin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

@interface Person : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong , nonatomic) NSString *age;
@end
