//
//  YXPhotoAlbumLayout.h
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YXPhotoAlbumModel.h"

@interface YXPhotoAlbumLayout : NSObject

@property (nonatomic, assign) BOOL isNeedShowDate;
@property (nonatomic, strong) YXPhotoAlbumModel *model;

- (instancetype)initWithModel:(YXPhotoAlbumModel *)model;



@end
