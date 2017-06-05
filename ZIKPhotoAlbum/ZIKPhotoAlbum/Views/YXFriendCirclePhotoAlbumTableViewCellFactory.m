//
//  YXFriendCirclePhotoAlbumTableViewCellFactory.m
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import "YXFriendCirclePhotoAlbumTableViewCellFactory.h"
#import "YXFriendCirclePhotoAlbumTextTableViewCell.h"
#import "YXFriendCirclePhotoAlbumImageTableViewCell.h"
#import "YXFriendCirclePhotoAlbumTodayAddTableViewCell.h"

@implementation YXFriendCirclePhotoAlbumTableViewCellFactory
+(YXFriendCirclePhotoAlbumTableViewCell *)getCell:(YXPhotoAlbumLayout *)albumInfo withCellStyle:(UITableViewCellStyle)cellStyle withCellIdentifier:(NSString *)reuserIdentifier {
    YXFriendCirclePhotoAlbumTableViewCell *baseCell;
    if (albumInfo.model.albumType == YXPhotoAlbumTypeText) {
        baseCell = [[YXFriendCirclePhotoAlbumTextTableViewCell alloc] initWithStyle:cellStyle reuseIdentifier:reuserIdentifier];
    }
    else if (albumInfo.model.albumType == YXPhotoAlbumTypePicture) {
        baseCell = [[YXFriendCirclePhotoAlbumImageTableViewCell alloc] initWithStyle:cellStyle reuseIdentifier:reuserIdentifier];
    }
    return baseCell;
}

+(NSString *)getCellIdentifier:(YXPhotoAlbumLayout *)albumInfo {
    if (albumInfo.model.albumType == YXPhotoAlbumTypeText) {
        return [YXFriendCirclePhotoAlbumTextTableViewCell getIdentifier];
    }
    else if (albumInfo.model.albumType == YXPhotoAlbumTypePicture) {
        return [YXFriendCirclePhotoAlbumImageTableViewCell getIdentifier];
    }
    return nil;
}

+(CGFloat)getCellHeight:(YXPhotoAlbumLayout *)cellInfo {
    if (cellInfo.model.albumType == YXPhotoAlbumTypeText) {
        return [YXFriendCirclePhotoAlbumTextTableViewCell getHeight:cellInfo];
    }
    else if (cellInfo.model.albumType == YXPhotoAlbumTypePicture) {
        return [YXFriendCirclePhotoAlbumImageTableViewCell getHeight:cellInfo];
    }
    return 0;
}

@end
