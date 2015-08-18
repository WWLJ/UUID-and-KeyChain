//
//  ISMKeyChainHelper.h
//  UUIDDemo
//
//  Created by iShareme on 15/8/18.
//  Copyright (c) 2015年 iShareme. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ISMKeyChainHelper : NSObject

+ (void) saveUuidStr:(NSString*)uuidStr
      uuidStrService:(NSString*)uuidStrService;

+ (NSString*) getUuidStrWithService:(NSString*)uuidStrService;


@end
