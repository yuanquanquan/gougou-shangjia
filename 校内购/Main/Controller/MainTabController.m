//
//  MainTabController.m
//  校内购
//
//  Created by 赵志刚 on 15/10/11.
//  Copyright © 2015年 赵志刚. All rights reserved.
//

#import "MainTabController.h"
#import "OrderController.h"
#import "OnlineController.h"
#import "PersonController.h"
#import "ZGNavigationController.h"

@interface MainTabController ()

@end

@implementation MainTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    OrderController *order = [[OrderController alloc]init];
    ZGNavigationController *nv = [[ZGNavigationController alloc]initWithRootViewController:order];
    order.tabBarItem.title = @"订单";
    
    OnlineController *online = [[OnlineController alloc]init];
    online.tabBarItem.title = @"营业/打烊";

    PersonController *person= [[PersonController alloc]init];
    person.tabBarItem.title = @"个人";

    self.viewControllers = @[nv, online, person];
    
    UITabBar *tabBar = self.tabBar;
//    [[UITabBar appearance] setTintColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"base.png"]]];
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:0 / 255.0 green:187 / 255.0 blue:156 / 255.0 alpha:1]];
    
    UITabBarItem *item0 = [tabBar.items objectAtIndex:0];
    item0.selectedImage = [[UIImage imageNamed:@"dingdan_select.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
    item0.image = [[UIImage imageNamed:@"dingdan_deselect.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *item1 = [tabBar.items objectAtIndex:1];
    item1.selectedImage = [[UIImage imageNamed:@"yinye_select.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
    item1.image = [[UIImage imageNamed:@"yinye_deselect.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *item2 = [tabBar.items objectAtIndex:2];
    item2.selectedImage = [[UIImage imageNamed:@"geren_select.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item2.image = [[UIImage imageNamed:@"geren_deselect.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    
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
