//
//  YXPhotoAlbumContentConfig.m
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import "YXPhotoAlbumContentConfigFactory.h"
@interface YXPhotoAlbumContentConfigFactory ()
@property (nonatomic,strong)    NSDictionary                *dict;

@end


@implementation YXPhotoAlbumContentConfigFactory
+ (instancetype)sharedFactory {
    static YXPhotoAlbumContentConfigFactory *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[YXPhotoAlbumContentConfigFactory alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
//        _dict = @{
//                  @(YXPhotoAlbumTypeText) :
//                  }
    }
    return self;
}
@end
