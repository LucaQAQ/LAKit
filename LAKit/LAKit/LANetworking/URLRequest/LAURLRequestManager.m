//
//  LAURLRequestManager.m
//  LCPro
//
//  Created by Luca on 2019/4/9.
//  Copyright © 2019 Luca. All rights reserved.
//

#import "LAURLRequestManager.h"
#import <AFNetworking/AFNetworking.h>
#import "LANetworkConfig.h"

@interface LAURLRequestManager()

@property (nonatomic, strong) AFHTTPRequestSerializer *serializer;

@end
@implementation LAURLRequestManager

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    static LAURLRequestManager *sharedInstance = nil;
    dispatch_once(&onceToken, ^{
        
        sharedInstance = [[LAURLRequestManager alloc] init];
    });
    return sharedInstance;
}

#pragma mark - set/get
-(AFHTTPRequestSerializer *)serializer{
    
    if (!_serializer) {
        
        _serializer = [AFHTTPRequestSerializer serializer];
        _serializer.timeoutInterval = [LANetworkConfig sharedInstance].requestTimeout;
        _serializer.cachePolicy = NSURLRequestUseProtocolCachePolicy;
    }
    return _serializer;
}
//- (NSURLRequest *)getRequestWithParams:(NSDictionary *)params
//                      servieIdentifier:(NSString *)servieIdentifier
//                               apiName:(NSString *)apiName
//                           requestType:(NSString *)type{
//    
//    
//}
@end
