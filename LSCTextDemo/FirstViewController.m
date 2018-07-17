//
//  FirstViewController.m
//  LSCTextDemo
//
//  Created by csdc-iMac on 2018/7/11.
//  Copyright © 2018年 Cloudox. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
#import "Firsts.h"

@interface FirstViewController ()

@property NSMutableArray *arrayHomes;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"首页";
    
    Firsts *first1=[Firsts initwithPhoto:@"photo1.png"
                                    Name:@"Tom"
                                    Date:@"2018.2.3"];
    Firsts *first2=[Firsts initwithPhoto:@"photo2.png"
                                    Name:@"Mike"
                                    Date:@"2018.5.23"];
    Firsts *first3=[Firsts initwithPhoto:@"photo3.png"
                                    Name:@"Tony"
                                    Date:@"2018.6.3"];
    Firsts *first4=[Firsts initwithPhoto:@"photo4.png"
                                    Name:@"Andy"
                                    Date:@"2018.6.17"];
    Firsts *first5=[Firsts initwithPhoto:@"photo5.png"
                                    Name:@"Frank"
                                    Date:@"2018.4.13"];
    Firsts *first6=[Firsts initwithPhoto:@"photo6.png"
                                    Name:@"Nancy"
                                    Date:@"2018.5.23"];
    Firsts *first7=[Firsts initwithPhoto:@"photo7.png"
                                    Name:@"Bruce"
                                    Date:@"2018.4.13"];    
    _arrayHomes=[[NSMutableArray alloc]initWithObjects:first1,first2,first3,first4,first5,first6,first7, nil] ;

    UITableView *homeTable=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
   
    [homeTable setRowHeight:80]; //行高
    [homeTable setSeparatorColor:[UIColor brownColor]];  //分割线颜色
    UIEdgeInsets inset = homeTable.separatorInset;
    homeTable.separatorInset = UIEdgeInsetsMake(inset.top, 0, inset.bottom, inset.right);  //0表示距左边界的距离
    homeTable.delegate=self;
    homeTable.dataSource=self;
    //设置数据源代理，即从self获取数据
      
    [self.view addSubview:homeTable];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{   //这一组有多少行
    return _arrayHomes.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:( NSIndexPath *)indexPath{
    //每一行显示什么内容，其中，indexPath是对应的第几行
    static NSString *identifier = @"identifier";
    //identifier。因为一个表中可能存在多种样式的单元格，在这里把相同样式的单元格放在一个集合中，为这个集合加标识符，之后可以通过不同的标识符，选取不同样式的单元格
    UITableViewCell *home = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (home == nil) {
        home = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }  //如果还没有单元格，创建单元格的时候需要使用到标识符identifier。这部分代码体现了UITableViewCell的重用机制
    Firsts *f=[_arrayHomes objectAtIndex:indexPath.row];
    home.imageView.image=[UIImage imageNamed:f.photo];  //设置图片
    home.textLabel.text=f.name;   //设置文字
    home.detailTextLabel.text=f.date;  //设置详细文字
    return home;
 
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    [tableView deselectRowAtIndexPath:indexPath animated:YES]; //取消表格中各行的选中状态
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
