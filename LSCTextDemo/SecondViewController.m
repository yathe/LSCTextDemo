//
//  SecondViewController.m
//  LSCTextDemo
//
//  Created by csdc-iMac on 2018/7/11.
//  Copyright © 2018年 Cloudox. All rights reserved.
//

#import "SecondViewController.h"
#import "AddViewController.h"

@interface SecondViewController ()
@property UILabel *friendsLabel;
@property AddViewController *addView;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title=@"联系人";

    self.friendsLabel=[[UILabel alloc]init];
    self.friendsLabel.frame=CGRectMake(70, 210, 280, 220);
    UIColor *color=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    [self.friendsLabel setBackgroundColor:color];   //设置标签的背景图片
    self.friendsLabel.textAlignment=NSTextAlignmentCenter;
    self.friendsLabel.numberOfLines=0; //支持换行输入
    [self.view addSubview:self.friendsLabel];
    
    UIButton *jumpBut=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    jumpBut.frame=CGRectMake(130, 500, 150, 60);
    [jumpBut setTitle:@"添加" forState:UIControlStateNormal];
    [jumpBut addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];   //点击事件触发按键跳转至add方法
    [jumpBut setBackgroundColor:[UIColor colorWithRed:0.7 green:0.1 blue:0.1 alpha:0.5]];
    [jumpBut setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    jumpBut.titleLabel.font=[UIFont systemFontOfSize:17];//设置按键的字体大小
    [self.view addSubview:jumpBut];
}
    
-(void)add{
    
    self.addView=[[AddViewController alloc]init];
    self.addView.delegate=self; //指明secondviewcontroller是addviewcontroller的代理
    self.addView.hidesBottomBarWhenPushed=YES;//当跳转到下一界面时，可以隐藏底部的bar
    [self.navigationController pushViewController:self.addView animated:YES];  //跳转至下一界面
   
}
    
-(void)addFriends:(NSString *)friends{  //实现协议定义的方法
    self.friendsLabel.text=friends;

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
