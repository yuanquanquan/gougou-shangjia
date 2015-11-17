//
//  OrderController.m
//  校内购
//
//  Created by 赵志刚 on 15/11/17.
//  Copyright © 2015年 赵志刚. All rights reserved.
//

#import "OrderController.h"
#import "UIImageView+WebCache.h"
#import "OrderCell.h"

@interface OrderController ()

@end

@implementation OrderController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
   
   
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"orderCell";
    OrderCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[OrderCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    [cell.picture sd_setImageWithURL:[NSURL URLWithString:@"http://b.hiphotos.baidu.com/baike/w%3D268/sign=ff4daf8ecb1349547e1eef626e4f92dd/3ac79f3df8dcd1001b33ef2e728b4710b9122f15.jpg"] placeholderImage:nil];
//    [cell.cancelButton setHidden:NO];
//    [cell.arriveButton setHidden:NO];
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return self.view.frame.size.height * 1 / 3.0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 4;
}
@end
