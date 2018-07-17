//
//  AppDelegate.h
//  LSCTextDemo
//
//  Created by csdc-iMac on 2018/7/11.
//  Copyright © 2018年 Cloudox. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
//自定义的方法需要在接口文件中声明
- (void)clearAllViewController;
- (void)changeToTabBarController;

- (void)changeToLogin;

@end

