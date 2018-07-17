//
//  AppDelegate.m
//  LSCTextDemo
//
//  Created by csdc-iMac on 2018/7/11.
//  Copyright © 2018年 Cloudox. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "LSCTabBarViewController.h"
#import "SectionViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) ViewController *loginVC;
@property LSCTabBarViewController *tabBarC;
//声明，这样局部变量才能转换成全局变量


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //初始化，全屏
    self.loginVC = [[ViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:self.loginVC];
    //导航控制器，rootviewcontroller是第一个界面，即nav的第一个界面是loginVC
    self.window.rootViewController = nav;
    //window的第一个界面是nav
    [self.window makeKeyAndVisible];
    //设置并显示主窗口
    return YES;

}

- (void)clearAllViewController { //自定义的方法，清空屏幕。注意要在.h文件中声明
    self.loginVC = nil;
}

- (void)changeToTabBarController {  //自定义的方法，跳转到tabbar。注意要在.h文件中声明
    self.tabBarC = [[LSCTabBarViewController alloc] init];  //初始化tabBarC
//    UINavigationController *navtab=[[UINavigationController alloc]initWithRootViewController:tabBarC];  //错误
    self.window.rootViewController = self.tabBarC;  //设置第一个界面是navtab
}




- (void)changeToLogin {  //自定义的方法.注意要在.h文件中声明
    ViewController *login=[[ViewController alloc]init];
    self.window.rootViewController=login;
}




- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
