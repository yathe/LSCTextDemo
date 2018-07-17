//
//  AddViewController.m
//  LSCTextDemo
//
//  Created by csdc-iMac on 2018/7/13.
//  Copyright © 2018年 Cloudox. All rights reserved.
//

#import "AddViewController.h"
#import "SecondViewController.h"

@interface AddViewController ()
@property UITextView *tx;
@end


@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"添加";
    self.view.backgroundColor=[UIColor whiteColor];
    
    self.tx=[[UITextView alloc]init];
    self.tx.frame=CGRectMake(60, 200, 300, 140);
    self.tx.layer.borderColor=[UIColor blackColor].CGColor;
    self.tx.layer.borderWidth=1;
    [self.tx setFont:[UIFont fontWithName:@"Arial" size:20]];  //设置文本框里字体的大小
    [self.view addSubview:self.tx];
    
    UIButton *back=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    back.frame=CGRectMake(130, 450, 150, 60);
    [back setTitle:@"确认添加" forState:UIControlStateNormal];
    back.layer.borderWidth=1;
    [back setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    back.layer.borderColor=[UIColor blackColor].CGColor ;
    [back addTarget:self action:@selector(backItem) forControlEvents:UIControlEventTouchUpInside];  //触发点击事件时跳转到backItem方法
    [self.view addSubview:back];
   
}


-(void)backItem{
    [self.delegate addFriends:self.tx.text];   //使用协议传递数据
    [self.navigationController popViewControllerAnimated:YES]; //返回到上一界面
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
