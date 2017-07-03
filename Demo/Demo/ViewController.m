//
//  ViewController.m
//  Demo
//
//  Created by wangmin on 2017/1/18.
//  Copyright © 2017年 wangmin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *dataArr;
@property (nonatomic, strong) UIView *bigview;
@property (nonatomic, weak) UIView *v;


@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"%s",__func__);
}

- (void)dealloc
{
    NSLog(@"释放了对象");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *arr = @[@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1"];
    NSArray *arr1 = @[@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1"];

    for (int i=0;i<arr.count;i++) {
        NSLog(@"11111");
        for (int i=0; i<arr1.count; i++) {
            NSString *str = [arr1 objectAtIndex:i];
            if([arr containsObject:str])
            {
                NSLog(@"33333333");
                break ;
            }
        }
        NSLog(@"2222222222222");
    }
//    Person *p = [[Person alloc]init];
//    [p setLog:^{
//        [self.view addSubview:self.bigview];
//    }];
//    [p loadLog];
//    [self.view addSubview:self.scrollView];
    
//    [self v];
//    self.bigview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 300)];
//    self.bigview.backgroundColor = [UIColor redColor];
//    self.bigview.tag = 10;
//    [self.view addSubview:self.bigview];
//    
//    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.frame = CGRectMake(0, 300, 100, 80);
//    btn.backgroundColor = [UIColor purpleColor];
//    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];
    
    
}

- (IBAction)smallBtnClick:(id)sender {
    
    
}


- (IBAction)bigBtnClick:(id)sender {
    
    
}

- (void)logString
{
    NSLog(@"调用了----");
}

- (UIView *)v{
    if(!_v)
    {
        UIView *v = [[UIView alloc]initWithFrame:self.view.bounds];
        v.backgroundColor = [UIColor purpleColor];
        [self.view addSubview:v];
        _v = v;
    }
    return _v;
}

- (void)btnClick:(UIButton *)btn
{
    NSLog(@"1111111%@",btn);
    [btn removeFromSuperview];
    NSLog(@"22222%@",btn);
    
    [self.bigview removeFromSuperview];
    NSLog(@"333333%@",self.bigview);
    
    UIView *bigview = [self.view viewWithTag:100];
    NSLog(@"44444444%@",bigview);

    [bigview removeFromSuperview];
    NSLog(@"555555%@",bigview);

    
}

- (NSMutableArray *)dataArr
{
    if(!_dataArr)
    {
        _dataArr = [NSMutableArray array];
    }
    return _dataArr;
}

- (UIScrollView *)scrollView
{
    if(!_scrollView)
    {
        _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 300, 800)];
        _scrollView.pagingEnabled = YES;
        _scrollView.contentSize = CGSizeMake(300, 10000);
        _scrollView.backgroundColor = [UIColor redColor];
        
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, 460, 100, 40)];
        lab.backgroundColor = [UIColor yellowColor];
        [_scrollView addSubview:lab];
    }
    return _scrollView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end




//@implementation Person
//
//
//
//@end

