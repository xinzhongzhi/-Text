//
//  person.h
//  深拷贝浅拷贝练习
//
//  Created by 辛忠志 on 2017/8/31.
//  Copyright © 2017年 辛忠志. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface person : NSObject
@property (copy,nonatomic)NSString * name;
@property (copy,nonatomic)NSString * age;
@end
