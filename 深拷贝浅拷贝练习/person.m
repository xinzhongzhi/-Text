//
//  person.m
//  深拷贝浅拷贝练习
//
//  Created by 辛忠志 on 2017/8/31.
//  Copyright © 2017年 辛忠志. All rights reserved.
//

#import "person.h"
@interface person()<NSCopying>

@end
@implementation person
-(id)copyWithZone:(NSZone*)zone{
    person * per = [[person allocWithZone:zone]init];
    per.age = self.age;
    per.name = self.name;
    return per;
}
@end
