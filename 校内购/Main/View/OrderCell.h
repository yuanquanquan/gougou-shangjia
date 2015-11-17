//
//  OrderCell.h
//  校内购
//
//  Created by 赵志刚 on 15/10/11.
//  Copyright © 2015年 赵志刚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderCell : UITableViewCell

//货物信息View
@property (strong, nonatomic) UIView *infoView;
//货物图片
@property (strong, nonatomic) UIImageView *picture;
//货物名称
@property (strong, nonatomic) UILabel *namelabel;

//状态信息：未送达 已送到 已取消
@property (strong, nonatomic) UILabel *statusLabel;
//配送按钮
@property (strong, nonatomic) UIButton *arriveButton;
//取消配送按钮
@property (strong, nonatomic) UIButton *cancelButton;

//用户信息
@property (strong, nonatomic) UILabel *userInfoLabel;
//用户备注
@property (strong, nonatomic) UILabel *remarkLabel;

@end
