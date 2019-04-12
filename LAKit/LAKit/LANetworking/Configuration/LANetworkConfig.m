//
//  LANetworkConfig.m
//  LCPro
//
//  Created by Luca on 2019/4/9.
//  Copyright © 2019 Luca. All rights reserved.
//

#import "LANetworkConfig.h"
#import <AFNetworking/AFNetworking.h>
#import "LANetworkingKeys.h"
#import "AppDelegate.h"
#import "LCServiceFactory.h"

@interface LANetworkConfig()

@property (nonatomic, strong) LAService *service;

@end
@implementation LANetworkConfig

+ (instancetype)sharedInstance
{
    static LANetworkConfig *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[LANetworkConfig alloc] init];
        sharedInstance.requestTimeout = 15.0f;
        [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    });
    return sharedInstance;
}
//获取网络状况
-(BOOL)isReachable{
    if ([AFNetworkReachabilityManager sharedManager].networkReachabilityStatus == AFNetworkReachabilityStatusUnknown) {
        return YES;
    } else {
        return [[AFNetworkReachabilityManager sharedManager] isReachable];
    }
}
//设置服务器环境
- (int)setCommonServiceWithServiceClassName:(NSString *)serviceClassName{
    
    self.service = [[LCServiceFactory sharedInstance]serviceWithServiceClassName:serviceClassName];
    return self.commonService?1:0;
}
-(LAService *)commonService{
    
    return self.service;
}

@end
