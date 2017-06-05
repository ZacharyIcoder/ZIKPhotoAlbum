//
//  YXFriendCirclePhotoAlbumTodayAddTableViewCell.m
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import "YXFriendCirclePhotoAlbumTodayAddTableViewCell.h"

@interface YXFriendCirclePhotoAlbumTodayAddTableViewCell ()
@property (nonatomic, strong) UILabel *todayTimeLabel;
@property (nonatomic, strong) UIImageView *addImageView;
@end

@implementation YXFriendCirclePhotoAlbumTodayAddTableViewCell

-(void)addContentView {
    [self addSubview:self.todayTimeLabel];
    [self addSubview:self.addImageView];
}

-(void)setContentView:(YXPhotoAlbumLayout *)layoutInfo {
//    _timeLabel.text        = layoutInfo.model.dateStr;
//    _imageTextLabel.text   = layoutInfo.model.content;
}

+(NSString *)getIdentifier {
    return @"YXAlbumTodayAddCell";
}

+(CGFloat)getHeight:(YXPhotoAlbumLayout *)layoutInfo {
    return 90;
}

-(void)layoutSubviews {
    _todayTimeLabel.frame = CGRectMake(10, 5, 80, 21);
    _addImageView.frame   = CGRectMake(100, 5, 80, 80);
}

#pragma mark - 懒加载
-(UILabel *)todayTimeLabel {
    if (_todayTimeLabel == nil) {
        _todayTimeLabel = [[UILabel alloc] init];
        _todayTimeLabel.font = [UIFont systemFontOfSize:20.0f];
        _todayTimeLabel.text = @"今天";
        _todayTimeLabel.textColor = [UIColor darkGrayColor];
    }
    return _todayTimeLabel;
}

-(UIImageView *)addImageView {
    if (_addImageView == nil) {
        _addImageView = [[UIImageView alloc] init];
        _addImageView.image = [UIImage imageNamed:@"shangchuanzhaopian"];
    }
    return _addImageView;
}

@end
