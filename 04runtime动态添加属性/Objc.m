//
//  Objc.m
//  04runtime动态添加属性
//
//  Created by coderXu on 16/12/5.
//  Copyright © 2016年 coderXu. All rights reserved.
//

#import "Objc.h"
#import <objc/runtime.h>
@implementation Objc
static char nameKey;

// 或者这种实现
static NSString *_name;

- (void)setName:(NSString *)name
{
    // 属性跟对象有关联-就是添加属性
    
    // object:对象
    // key:属性名，根据key去获取 void * == id-->@"name"也可以
    // value:值
    // policy：策略
    
    objc_setAssociatedObject(self, &nameKey, name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

}

- (NSString *)name
{
    return objc_getAssociatedObject(self, &nameKey);
}


//- (void)setName:(NSString *)name
//{
//    _name = name;
//}
//
//- (NSString *)name
//{
//    return _name;
//}

@end
