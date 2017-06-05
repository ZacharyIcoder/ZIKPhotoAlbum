//
//  YXFriendCirclePhotoAlbumTableViewCellFactory.h
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YXFriendCirclePhotoAlbumTableViewCell.h"
#import "YXPhotoAlbumLayout.h"
@interface YXFriendCirclePhotoAlbumTableViewCellFactory : NSObject
+ (YXFriendCirclePhotoAlbumTableViewCell *)getCell:(YXPhotoAlbumLayout *)albumInfo withCellStyle:(UITableViewCellStyle)cellStyle withCellIdentifier:(NSString *)reuserIdentifier;
+ (NSString *)getCellIdentifier:(YXPhotoAlbumLayout *)albumInfo;
+ (CGFloat)getCellHeight:(YXPhotoAlbumLayout *)cellInfo;
@end
