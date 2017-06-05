//
//  YXPhotoAlbumModel.m
//  ZIKPhotoAlbum
//
//  Created by ZIKong on 2017/5/31.
//  Copyright © 2017年 www.appservice.wang. All rights reserved.
//

#import "YXPhotoAlbumModel.h"
#import "NSCalendar+ZIKTheDayBeforeYesterDay.h"
@implementation YXPicture

@end

@implementation YXPhotoAlbumModel

//返回一个 Dict，将 Model 属性名对映射到 JSON 的 Key。
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"zikPics" : @"pics"};
}

// 返回容器类中的所需要存放的数据类型 (以 Class 或 Class Name 的形式)。
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"pics" : [YXPicture class],
             };
}

// 当 JSON 转为 Model 完成后，该方法会被调用。
// 你可以在这里对数据进行校验，如果校验不通过，可以返回 NO，则该 Model 会被忽略。
// 你也可以在这里做一些自动转换不能完成的工作。
- (BOOL)modelCustomTransformFromDictionary:(NSDictionary *)dic {
    //_yx_address = [YXAddress yy_modelWithDictionary:dic];
    //_isShowDate = [self isShow];
    _dateStr   = [self getDate:_createTime.floatValue];
    _albumType = [self calculationAlbumType];
    return YES;
}


- (NSString*)getDate:(NSTimeInterval)createtime {
    //    createtime = 1495209608; //2017.5.22 00.00.08
    NSString *str = nil;
    static NSDateFormatter *dateFormatter = nil;
    if (dateFormatter == nil) {
        dateFormatter = [[NSDateFormatter alloc] init];
    }
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:createtime];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    if ([calendar isDateInToday:date]) {
        str = @"今天";
    }
    else if ([calendar isDateInYesterday:date]) {
        str = @"昨天";
    }
    else if ([calendar isDateInTheDayBeforeYesterDay:date]) {
        str = @"前天";
    }
    else {
        dateFormatter.dateFormat = @"ddMM月";
        str = [dateFormatter stringFromDate:date];
    }
    return str;
}

- (YXPhotoAlbumType)calculationAlbumType {
    if ([_type isEqualToString:@"0"]) {
        if (_pics == nil || _pics.count == 0) {
            return YXPhotoAlbumTypeText;
        }
        else {
            return YXPhotoAlbumTypePicture;
        }
    }
    else if ([_type isEqualToString:@"2"]) {
        return YXPhotoAlbumTypeVideo;
    }
    else if ([_type isEqualToString:@"3"]) {
        return YXPhotoAlbumTypeLink;
    }
    else {
        return YXPhotoAlbumUnknown;
    }
}


@end
