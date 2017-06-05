//
//  YXFriendCirclePhotoAlbumCellConfig.h
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YXPhotoAlbumLayout.h"
@protocol YXFriendCirclePhotoAlbumCellConfig <NSObject>
@required
- (void)addContentView;

@optional
- (void)setContentView:(YXPhotoAlbumLayout *)layoutInfo;

+ (NSString *)getIdentifier;
+ (CGFloat)getHeight:(YXPhotoAlbumLayout *)layoutInfo;

@end
