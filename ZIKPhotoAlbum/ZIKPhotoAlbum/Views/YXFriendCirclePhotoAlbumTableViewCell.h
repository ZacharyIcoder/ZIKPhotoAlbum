//
//  YXFriendCirclePhotoAlbumTableViewCell.h
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YXFriendCirclePhotoAlbumCellConfig.h"

//屏幕的宽高
#define UIScreenWidth                              [UIScreen mainScreen].bounds.size.width
#define UIScreenHeight                             [UIScreen mainScreen].bounds.size.height
#define UIScreenWidthScale   UIScreenWidth / 320
#define UIScreenHeightScale  UIScreenHeight / 480
#define UIColorFriendGray [UIColor colorWithRed:240/255. green:240/255. blue:240/255. alpha:1]

@interface YXFriendCirclePhotoAlbumTableViewCell : UITableViewCell<YXFriendCirclePhotoAlbumCellConfig>

@end
