//
//  ViewController.m
//  深拷贝浅拷贝练习
//
//  Created by 辛忠志 on 2017/8/31.
//  Copyright © 2017年 辛忠志. All rights reserved.
//

#import "ViewController.h"
#import "person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

#pragma mark ----------------------- 这里分别做了两组例子来看NSMU 和 NS 的区别(拿数组来做例子 其他的字符串效果都是一样的)-----------------------
    
    
    /*下面你初始值是NSMu 开始的那么无论你怎样 他都是创建了新的对象  */
    NSMutableArray * pickerDataArray = [NSMutableArray arrayWithObjects:@"1",@"2",@"4",@"5"@"10", nil];
    NSArray * arr = [pickerDataArray copy];
    NSArray * arr2 = [pickerDataArray mutableCopy];
    NSMutableArray * arr3 = [pickerDataArray copy];
    NSMutableArray * arr4 = [pickerDataArray mutableCopy];
    NSLog(@"%p",pickerDataArray);
    NSLog(@"%p",arr);
    NSLog(@"%p",arr2);
    NSLog(@"%p",arr3);
    NSLog(@"%p",arr4);
    
    /*只要是地址不变 值不变就不能叫做创建了新的对象 只有两者变了一样才能叫做产生了新的对象*/
    NSArray * baseArr = [[NSArray alloc]initWithObjects:@"11",@"22",@"33", nil];
    NSArray * arr10 = [baseArr copy];
    NSArray * arr11 = [baseArr mutableCopy];
    NSMutableArray * arr12 = [baseArr copy];
    NSMutableArray * arr13 = [baseArr mutableCopy];
    NSLog(@"%p",baseArr);
    NSLog(@"%p",arr10);
    NSLog(@"%p",arr11);
    NSLog(@"%p",arr12);
    NSLog(@"%p",arr13);
    
    /*初始化person  下面如果想copy一个对象 你就需要实现他本身的copy方法 - (id)copyWithZone:(NSZone *)zone; 这样才能保证他是有返回值的 并且在里面实现他的属性赋值(前提是你copy的对象当中用到了这个属性 如果用到了你需要对他进行赋值 否则程序崩溃)*/
    person * object = [[person alloc]init];
    object.age  = @"20";
    object.name = @"老王";
    person * object2 = [object copy];
    NSLog(@"%@",object2.age);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
