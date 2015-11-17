//
//  OrderCell.m
//  校内购
//
//  Created by 赵志刚 on 15/10/11.
//  Copyright © 2015年 赵志刚. All rights reserved.
//

#import "OrderCell.h"

@interface OrderCell ()



@end

@implementation OrderCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self buildView];
    }
    
    return self;
}


- (void)buildView {
    
    _infoView = [[UIView alloc]init];
    _picture = [[UIImageView alloc]init];
    _namelabel = [[UILabel alloc]init];
    [_namelabel setText:@"乐视薯片一斤半"];
    [_infoView addSubview:_picture];
    [_infoView addSubview:_namelabel];
    [self addSubview:_infoView];
    
    _statusLabel = [[UILabel alloc]init];
    [_statusLabel setText:@"已送达"];
    [self addSubview:_statusLabel];
    
    _arriveButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_arriveButton setTitle:@"配送" forState:UIControlStateNormal];
    [_arriveButton addTarget:self action:@selector(peisong) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_arriveButton];
    
    _cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_cancelButton setTitle:@"取消/无货" forState:UIControlStateNormal];
    [_cancelButton addTarget:self action:@selector(cancel) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_cancelButton];
    
    _userInfoLabel = [[UILabel alloc]init];
    [_userInfoLabel setTextAlignment:NSTextAlignmentCenter];
    [_userInfoLabel setText:@" 袁大牛 袁大牛 袁大牛 袁大牛 袁大牛"];
    [self addSubview:_userInfoLabel];
    
    _remarkLabel = [[UILabel alloc]init];
    [_remarkLabel setTextAlignment:NSTextAlignmentCenter];
    [_remarkLabel setText:@"就是厉害厉害"];
    [self addSubview:_remarkLabel];
    
    [_arriveButton setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"back"]]];
    [_infoView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"back"]]];
    [_cancelButton setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"back"]]];
    [_statusLabel setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"back"]]];

}

- (void)layoutSubviews {
    float WIDTH = self.frame.size.width;
    float HEIGHT = self.frame.size.height;
    
    _infoView.frame = CGRectMake(0, HEIGHT * 1 / 8.0, WIDTH * 4 / 5.0, HEIGHT * 4 / 8.0);
    _picture.frame = CGRectMake(10, 0, _infoView.frame.size.height, _infoView.frame.size.height);
    _namelabel.frame = CGRectMake(_picture.frame.origin.x + _picture.frame.size.width + 5, 0, _infoView.frame.size.width - _picture.frame.origin.x - _picture.frame.size.width, _infoView.frame.size.height);
    
    _statusLabel.frame = CGRectMake(WIDTH * 4 / 5.0, HEIGHT * 1 / 8.0, WIDTH * 1 / 5.0, HEIGHT * 4 / 8.0);
    _arriveButton.frame = CGRectMake(WIDTH * 4 / 5.0, 0, WIDTH * 1 / 5.0, HEIGHT * 3 / 8.0);
    _cancelButton.frame = CGRectMake(WIDTH * 4 / 5.0, HEIGHT * 3 / 8.0, WIDTH * 1 / 5.0, HEIGHT * 3 / 8.0);
    
    _userInfoLabel.frame = CGRectMake(0, HEIGHT * 6 / 8.0, WIDTH, HEIGHT * 1 / 8.0);
    _remarkLabel.frame = CGRectMake(0, HEIGHT * 7 / 8.0, WIDTH, HEIGHT * 1 / 8.0);
}

- (void)peisong {
    [_arriveButton setHidden:YES];
    [_cancelButton setHidden:YES];
    
}

- (void)cancel {
    [_arriveButton setHidden:YES];
    [_cancelButton setHidden:YES];
}
@end
