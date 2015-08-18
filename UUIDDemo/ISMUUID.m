//
//  ISMUUID.m
//  UUIDDemo
//
//  Created by iShareme on 15/8/18.
//  Copyright (c) 2015年 iShareme. All rights reserved.
//

#import "ISMUUID.h"
#import "ISMKeyChainHelper.h"
#include <sys/types.h>
#include <sys/sysctl.h>
#import <UIKit/UIKit.h>
NSString *const KEY_UUID = @"com.ishareme.shaimi.uuid";

@implementation ISMUUID
+(NSString *)getUUID
{
    
    NSString *uuid = [ISMKeyChainHelper getUuidStrWithService:KEY_UUID];
    if(uuid && uuid.length>0){
        return uuid;
    }
    NSString *uuidStr = [[UIDevice currentDevice] identifierForVendor].UUIDString;
    [ISMKeyChainHelper saveUuidStr:uuidStr uuidStrService:KEY_UUID];
    return uuidStr;
}

@end
