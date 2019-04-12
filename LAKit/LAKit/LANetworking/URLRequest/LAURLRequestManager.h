//
//  LAURLRequestManager.h
//  LCPro
//
//  Created by Luca on 2019/4/9.
//  Copyright © 2019 Luca. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LAURLRequestManager : NSObject

+ (instancetype)sharedInstance;


/**
 生成URLRequest

 @param params 请求参数
 @param servieIdentifier 服务标识
 @param apiName 请求api地址
 @param type 请求类型get、post...
 @return URLRequest
 */
- (NSURLRequest *)getRequestWithParams:(NSDictionary *)params
                      servieIdentifier:(NSString *)servieIdentifier
                               apiName:(NSString *)apiName
                           requestType:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
