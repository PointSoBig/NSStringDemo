//
//  ViewController.m
//  NSStringDemo
//
//  Created by 景晓峰 on 2017/4/21.
//  Copyright © 2017年 景晓峰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,retain) NSString *rStr;

@property (nonatomic,copy) NSString *cStr;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //元数据
    NSString *originStr = @"123";
//
//    //test1
//    NSMutableString *mStr = [NSMutableString stringWithString:originStr];
//    
//    self.rStr = mStr;
//    self.cStr = mStr;
//    
//    NSLog(@"originStr: 内容:%@----指针地址:%p",originStr,&originStr);
//    NSLog(@"mStr: 内容:%@---指针地址:%p",mStr,&*mStr);
//    
//    NSLog(@"_rStr: 内容:%@---指针地址:%p",_rStr,&*_rStr);
//    
//    NSLog(@"_cStr: 内容:%@---指针地址:%p",_cStr,&*_cStr);
//    
//    //改变后
//    [mStr appendString:@"456"];
//    NSLog(@"\n\n\n ***************改变后***************** \n\n\n");
//    
//    NSLog(@"originStr: 内容:%@----指针地址:%p",originStr,&originStr);
//    NSLog(@"mStr: 内容:%@---指针地址:%p",mStr,&*mStr);
//    
//    NSLog(@"_rStr: 内容:%@---指针地址:%p",_rStr,&*_rStr);
//    
//    NSLog(@"_cStr: 内容:%@---指针地址:%p",_cStr,&*_cStr);
    
    //test2
    NSString *str = [NSString stringWithString:originStr];
    
    self.rStr = str;
    self.cStr = str;
    
    NSLog(@"originStr: 内容:%@----指针地址:%p",originStr,*&originStr);
    NSLog(@"str: 内容:%@---指针地址:%p",str,&*str);
    NSLog(@"_rStr: 内容:%@---指针地址:%p",_rStr,&*_rStr);
    
    NSLog(@"_cStr: 内容:%@---指针地址:%p",_cStr,&*_cStr);

    //改变后
    str = @"456";
    
    NSLog(@"\n\n\n ***************改变后***************** \n\n\n");
    
    NSLog(@"originStr: 内容:%@---指针地址:%p",originStr,*&originStr);

    NSLog(@"str: 内容:%@---指针地址:%p",str,&*str);
    
    
    NSLog(@"retainStr: 内容:%@---指针地址:%p",_rStr,&*_rStr);
    
    NSLog(@"copyStr: 内容:%@---指针地址:%p", _cStr,&*_cStr);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
