//
//  ThirdViewController.m
//  LSCTextDemo
//
//  Created by csdc-iMac on 2018/7/12.
//  Copyright © 2018年 Cloudox. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"发现";
  
    UILabel *findLabel=[[UILabel alloc]init];
    findLabel.frame=CGRectMake(70, 200, 280, 200);
    findLabel.layer.borderColor=[UIColor brownColor].CGColor;  //标签的边框颜色
    findLabel.layer.borderWidth=1; //设置标签的边框
    findLabel.text=@"这是发现";
    findLabel.textAlignment=NSTextAlignmentCenter;  //标签的文本内容居中显示

    [self.view addSubview:findLabel];
  
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
