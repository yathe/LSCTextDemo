//
//  Firsts.h
//  LSCTextDemo
//
//  Created by csdc-iMac on 2018/7/12.
//  Copyright © 2018年 Cloudox. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Firsts : NSObject
@property NSString *photo;
@property NSString *name;
@property NSString *date;
+(Firsts *)initwithPhoto:(NSString *)photo
                    Name:(NSString *)name
                    Date:(NSString *)date;
@end
