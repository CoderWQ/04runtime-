//
//  Objc.h
//  04runtime动态添加属性
//
//  Created by coderXu on 16/12/5.
//  Copyright © 2016年 coderXu. All rights reserved.
//

// 分类只会声明name的get和set方法，不会实现

#import <Foundation/Foundation.h>

@interface Objc : NSObject

@property(nonatomic,copy)NSString  *name;

@end
