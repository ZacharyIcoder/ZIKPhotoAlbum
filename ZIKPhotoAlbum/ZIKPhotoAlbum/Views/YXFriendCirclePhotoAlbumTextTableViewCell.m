//
//  YXFriendCirclePhotoAlbumTextTableViewCell.m
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import "YXFriendCirclePhotoAlbumTextTableViewCell.h"

@interface YXFriendCirclePhotoAlbumTextTableViewCell ()
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UILabel *textContentLabel;
@end

@implementation YXFriendCirclePhotoAlbumTextTableViewCell

-(void)addContentView {
    [self addSubview:self.timeLabel];
    [self addSubview:self.textContentLabel];
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
    
    _textContentLabel.text = layoutInfo.model.content;
}

+(NSString *)getIdentifier {
    return @"YXAlbumTextCell";
}

+(CGFloat)getHeight:(YXPhotoAlbumLayout *)layoutInfo {
    return 30;
}

-(void)layoutSubviews {
    _timeLabel.frame        = CGRectMake(15, 0, 80, 28);
    _textContentLabel.frame = CGRectMake(95, 3, UIScreenWidth-95-3, 24);
}

-(UILabel *)timeLabel {
    if (_timeLabel == nil) {
        _timeLabel           = [[UILabel alloc] init];
    }
    return _timeLabel;
}

-(UILabel *)textContentLabel {
    if (_textContentLabel == nil) {
        _textContentLabel                 = [[UILabel alloc] init];
        _textContentLabel.font            = [UIFont systemFontOfSize:14.0f];
        _textContentLabel.backgroundColor = UIColorFriendGray;
        _textContentLabel.textColor       = [UIColor darkGrayColor];
      
    }
    return _textContentLabel;
}

@end
