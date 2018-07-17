//
//  ViewController.m
//  LSCTextDemo
//
//  Created by csdc-iMac on 2018/7/11.
//  Copyright © 2018年 Cloudox. All rights reserved.
//
//#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
//宏定义

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
#define NUMBERS  @"1234567890"
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登录";
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageView=[[UIImageView alloc]init];
    imageView.image=[UIImage imageNamed:@"123.png"];
    imageView.frame=CGRectMake(160, 120, 100, 100);
    //initWithFrame控制位置和尺寸
    [self.view addSubview:imageView];
    //把imageView加到视图中
    
    UILabel *userLabel=[[UILabel alloc]initWithFrame:CGRectMake(60, 280, 90, 50)];
    userLabel.text=@"用户名：";
    [self.view addSubview:userLabel];
    
    UITextField *userField=[[UITextField alloc]init];
    userField.frame=CGRectMake(130, 280, 210, 40);
    userField.borderStyle = UITextBorderStyleRoundedRect;
    userField.layer.borderColor=[UIColor brownColor].CGColor;
    userField.placeholder=@"username"; //水印提示
    userField.layer.borderWidth=1;
    userField.layer.cornerRadius=5;
    [self.view addSubview:userField];
    
    UILabel *passLabel=[[UILabel alloc]initWithFrame:CGRectMake(60, 350, 90, 50)];
    passLabel.text=@"密   码：";
    [self.view addSubview:passLabel];
    
    UITextField *passwordField=[[UITextField alloc]init];
    passwordField.frame=CGRectMake(130, 350, 210, 40);
    passwordField.borderStyle = UITextBorderStyleRoundedRect; //设置边框样式
    passwordField.secureTextEntry=YES;  //输入的字符变成*号
    passwordField.clearButtonMode=UITextFieldViewModeAlways;  //有“X”键可以清空文本
    passwordField.layer.borderColor=[UIColor brownColor].CGColor;
    passwordField.layer.borderWidth=1;
    passwordField.layer.cornerRadius=5;
    [self.view addSubview:passwordField];
    
    UIButton *but=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    but.frame=CGRectMake(110, 450, 210, 60);
    [but setTitle:@"确认" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(jumpToNext) forControlEvents:UIControlEventTouchUpInside];
    //按键跳转事件，self指代自身。selector（）里面写的是跳转方法,即跳转到jumpToNext()方法。监听“点击事件”，所以是UIControlEventTouchUpInside
    [but setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    but.backgroundColor=[UIColor colorWithRed:1.0 green:0.5 blue:0.5 alpha:1.0];
    //alpha：透明度
    but.titleLabel.font=[UIFont systemFontOfSize:18];//设置按键的字体大小
    [self.view addSubview:but];
}








- (void)jumpToNext {
    AppDelegate *myAppDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate; 
    [myAppDelegate clearAllViewController];  //调用清屏方法
    [myAppDelegate changeToTabBarController];  //调用跳转方法
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
