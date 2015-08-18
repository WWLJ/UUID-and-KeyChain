//
//  ISMUUID.h
//  UUIDDemo
//
//  Created by iShareme on 15/8/18.
//  Copyright (c) 2015年 iShareme. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ISMUUID : NSObject

//唯一标识  uuid
+(NSString *)getUUID;

//当前设备号
+(NSString *)getCurrentDeviceModel;

//当前系统版本号
+(NSString *)getSystemVersion;

@end
