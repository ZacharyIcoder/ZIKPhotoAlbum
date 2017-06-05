//
//  YXPhotoAlbumModel.h
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FriendCircleDefines.h"
/**
 图片
 */
@interface YXPicture : NSObject
@property (nonatomic, copy  ) NSString *createTime;
@property (nonatomic, strong) NSNumber *fsid;
@property (nonatomic, strong) NSNumber *id;

@property (nonatomic, copy  ) NSString *large_image;
@property (nonatomic, strong) NSNumber *lheight;
@property (nonatomic, strong) NSNumber *lwitdh;

@property (nonatomic, copy  ) NSString *mid_image;
@property (nonatomic, strong) NSNumber *mheight;
@property (nonatomic, strong) NSNumber *mwitdh;

@property (nonatomic, copy  ) NSString *small_image;
@property (nonatomic, strong) NSNumber *sheight;
@property (nonatomic, strong) NSNumber *switdh;

@property (nonatomic, copy  ) NSString *updateTime;

@end



@interface YXPhotoAlbumModel : NSObject
//后台返回的数据字段
@property (nonatomic, copy  ) NSString *address;
@property (nonatomic, copy  ) NSString *lat;
@property (nonatomic, copy  ) NSString *lng;

/**
 @列表
 */
@property (nonatomic, strong) NSArray  *atwho;
@property (nonatomic, copy  ) NSString *content;
@property (nonatomic, strong) NSNumber *createTime;
@property (nonatomic, copy  ) NSString *ctime;
@property (nonatomic, strong) NSNumber *fid;
@property (nonatomic, copy  ) NSString *headsmall;
@property (nonatomic, strong) NSNumber *ispraise;
@property (nonatomic, copy  ) NSString *nickname;

/**
 图片列表
 */
@property (nonatomic, strong) NSArray<YXPicture *>  *pics;

/**
 赞列表
 */
@property (nonatomic, strong) NSArray  *praises;

/**
 回复列表
 */
@property (nonatomic, strong) NSArray  *replys;

@property (nonatomic, copy  ) NSString *type;
@property (nonatomic, strong) NSNumber *uid;
@property (nonatomic, copy  ) NSString *visiable;

//自己定义的字段
@property (nonatomic, strong) NSArray          *zikPics;
@property (nonatomic, copy  ) NSString         *dateStr;
@property (nonatomic, assign) YXPhotoAlbumType albumType;


@end
