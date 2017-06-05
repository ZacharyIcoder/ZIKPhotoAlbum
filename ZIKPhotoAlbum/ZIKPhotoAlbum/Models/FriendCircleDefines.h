//
//  FriendCircleDefines.h
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#ifndef FriendCircleDefines_h
#define FriendCircleDefines_h

typedef NS_ENUM(NSUInteger, YXPhotoAlbumType) {
    YXPhotoAlbumTypeText    = 0, //只有文本
    YXPhotoAlbumTypePicture = 1, //图片加文字
    YXPhotoAlbumTypeVideo   = 2, //视频加文字
    YXPhotoAlbumTypeLink    = 3, //分享链接
    YXPhotoAlbumUnknown     = 4  //未知类型
};

#endif /* FriendCircleDefines_h */
