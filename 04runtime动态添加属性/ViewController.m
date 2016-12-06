//
//  ViewController.m
//  04runtime动态添加属性
//
//  Created by coderXu on 16/12/5.
//  Copyright © 2016年 coderXu. All rights reserved.
//

#import "ViewController.h"
#import "Objc.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    
    Objc *obj = [[Objc alloc] init];
    obj.name = @"12";
    
//    [obj setName:@"12"];
    NSLog(@"%@",NSStringFromClass([obj.name class]));
    NSLog(@"%@",obj.name);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
