//
//  YXFriendCirclePhotoAlbumMorePicturesView.m
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import "YXFriendCirclePhotoAlbumMorePicturesView.h"
#import "YXPhotoAlbumModel.h"
#import "UIImageView+WebCache.h"


@implementation YXFriendCirclePhotoAlbumMorePicturesView


-(void)setArray:(NSArray *)array {
    NSInteger number = array.count;
    if (number >=4) {
        number = 4;
        
        for (int i = 0;i<4;i++) {
            YXPicture *pic = array[i];
            UIImageView * imageview = [[UIImageView alloc]init];
            imageview.frame = CGRectMake((i%2)*40, (i/2)*40 , 39.5, 39.5);
            NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@",pic.small_image]];
            [imageview sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"mart_default"]];
            [self addSubview:imageview];
        }
        
    }
    else if (number == 3) {
        for (int i = 0;i<3;i++) {
            YXPicture *pic = array[i];
            UIImageView * imageview = [[UIImageView alloc]init];
            if (i == 0) {
                imageview.frame = CGRectMake(0, 0 , 40, 80);
            }else{
                imageview.frame = CGRectMake(40, (i/2)*40 , 39.5, 39.5);
            }
            NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@",pic.small_image]];
            [imageview sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"mart_default"]];
            
            [self addSubview:imageview];
        }
    }
    else if (number == 2) {
        for (int i = 0;i<2;i++) {
            YXPicture *pic = array[i];
            UIImageView * imageview = [[UIImageView alloc]init];
            imageview.frame = CGRectMake((i%2)*40, 0 , 39.5, 80);
            NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@",pic.small_image]];
            [imageview sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"mart_default"]];
            
            [self addSubview:imageview];
        }
    }
    else if (number == 1) {
        YXPicture *pic = [array firstObject];
        UIImageView * imageview = [[UIImageView alloc] init];
        imageview.frame = CGRectMake(0, 0 , 80, 80);
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@",pic.small_image]];
        [imageview sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"mart_default"]];
        
        [self addSubview:imageview];
    }

}

@end
