//
//  HomeTabController.m
//  校内购
//
//  Created by 赵志刚 on 15/11/17.
//  Copyright © 2015年 赵志刚. All rights reserved.
//

#import "HomeTabController.h"
#import "OrderController.h"
#import "OnlineController.h"
#import "PersonController.h"



@interface HomeTabController ()

@end

@implementation HomeTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // 1.订单
    OrderController *order = [[OrderController alloc]init];
    [self addChildViewController:order];
    
    //2.营业
    OnlineController *online = [[OnlineController alloc]init];
    [self addChildViewController:online];
    
    //3.个人
    PersonController *person = [[PersonController alloc]init];
    [self addChildViewController:person];

    
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
