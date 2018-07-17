//
//  AddViewController.h
//  LSCTextDemo
//
//  Created by csdc-iMac on 2018/7/13.
//  Copyright © 2018年 Cloudox. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddProtocol <NSObject>       //定义协议
-(void)addFriends:(NSString *)friends; //这是协议定义的方法，用于传值，值的类型是字符串
@end

@interface AddViewController : UIViewController
@property id <AddProtocol> delegate;   //利用协议来实现代理
-(void)backItem;

@end


