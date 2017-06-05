//
//  YXFriendCirclePhotoAlbumImageTableViewCell.m
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import "YXFriendCirclePhotoAlbumImageTableViewCell.h"
#import "YXFriendCirclePhotoAlbumMorePicturesView.h"

@interface YXFriendCirclePhotoAlbumImageTableViewCell ()
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) YXFriendCirclePhotoAlbumMorePicturesView  *imageContentView;
@property (nonatomic, strong) UILabel *numberLabel;
@property (nonatomic, strong) UILabel *imageTextLabel;
@end

@implementation YXFriendCirclePhotoAlbumImageTableViewCell

-(void)addContentView {
    [self addSubview:self.timeLabel];
    [self addSubview:self.imageContentView];
    [self addSubview:self.numberLabel];
    [self addSubview:self.imageTextLabel];
}

-(void)setContentView:(YXPhotoAlbumLayout *)layoutInfo {
    NSMutableAttributedString *AttributedStr = [[NSMutableAttributedString alloc]initWithString:layoutInfo.model.dateStr];
    
    [AttributedStr addAttribute:NSFontAttributeName
     
                          value:[UIFont systemFontOfSize:25.0]
     
                          range:NSMakeRange(0, 2)];
    if (layoutInfo.model.dateStr.length>=3) {
        [AttributedStr addAttribute:NSFontAttributeName
         
                              value:[UIFont systemFontOfSize:14.0]
         
                              range:NSMakeRange(2, 3)];
    }
    
    _timeLabel.attributedText = AttributedStr;
    
    _imageTextLabel.text    = layoutInfo.model.content;
    [_imageContentView.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeFromSuperview];
    }];
    _imageContentView.array = layoutInfo.model.pics;
    if (layoutInfo.model.pics.count > 1) {
        _numberLabel.text = [NSString stringWithFormat:@"共%ld张",layoutInfo.model.pics.count];
    }
}

+(NSString *)getIdentifier {
    return @"YXAlbumImageCell";
}

+(CGFloat)getHeight:(YXPhotoAlbumLayout *)layoutInfo {
    return 90;
}


-(void)layoutSubviews {
    _timeLabel.frame        = CGRectMake(15, 0, 80, 28);
    _imageContentView.frame = CGRectMake(95, 5, 80, 80);
    _numberLabel.frame      = CGRectMake(177, 80+5-20, 60, 18);
    _imageTextLabel.frame   = CGRectMake(180,5,  UIScreenWidth-180-3, 80-20);
}

-(UILabel *)timeLabel {
    if (_timeLabel == nil) {
        _timeLabel = [[UILabel alloc] init];
    }
    return _timeLabel;
}

-(UIView *)imageContentView {
    if (_imageContentView == nil) {
        _imageContentView = [[YXFriendCirclePhotoAlbumMorePicturesView alloc] init];
    }
    return _imageContentView;
}

-(UILabel *)numberLabel {
    if (_numberLabel == nil) {
        _numberLabel = [[UILabel alloc] init];
        _numberLabel.font = [UIFont systemFontOfSize:12.0f];
        _numberLabel.backgroundColor = [UIColor whiteColor];
    }
    return _numberLabel;
}

-(UILabel *)imageTextLabel {
    if (_imageTextLabel == nil) {
        _imageTextLabel = [[UILabel alloc] init];
        _imageTextLabel.font = [UIFont systemFontOfSize:14.0f];
        _imageTextLabel.backgroundColor = [UIColor whiteColor];
        _imageTextLabel.textColor = [UIColor darkGrayColor];
//        [_imageTextLabel sizeToFit];
    }
    return _imageTextLabel;
}
@end
