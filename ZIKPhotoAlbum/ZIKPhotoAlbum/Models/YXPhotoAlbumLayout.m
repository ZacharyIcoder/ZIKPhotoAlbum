//
//  YXPhotoAlbumLayout.m
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import "YXPhotoAlbumLayout.h"
@interface YXPhotoAlbumLayout ()

@end

@implementation YXPhotoAlbumLayout
-(instancetype)initWithModel:(YXPhotoAlbumModel *)model {
    self = [super init];
    if (self) {
        _model = model;
        [self isNeedShowDate];
    }
    return self;
}

-(BOOL)isNeedShowDate {
    return YES;
}
@end
