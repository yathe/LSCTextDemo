//
//  Firsts.m
//  LSCTextDemo
//
//  Created by csdc-iMac on 2018/7/12.
//  Copyright © 2018年 Cloudox. All rights reserved.
//

#import "Firsts.h"

@implementation Firsts
+(Firsts *)initwithPhoto:(NSString *)photo
                    Name:(NSString *)name
                    Date:(NSString *)date{
    Firsts *first=[[Firsts alloc]init];
    first.photo=photo;
    first.name=name;
    first.date=date;
    return first;
}
@end
