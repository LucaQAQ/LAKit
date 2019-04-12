//
//  LANetworkConfig.h
//  LCPro
//
//  Created by Luca on 2019/4/9.
//  Copyright © 2019 Luca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LAService.h"

NS_ASSUME_NONNULL_BEGIN

/**
 此类为网络层通用配置
 */
@interface LANetworkConfig : NSObject

+ (instancetype)sharedInstance;

//网络是否有用
@property (nonatomic, assign, readonly) BOOL isReachable;
//请求超时时间
@property (nonatomic, assign) NSTimeInterval requestTimeout;
//通用
@property (nonatomic, strong,readonly) LAService *commonService;

/**
 配置通用的Service，当Apimanager有设置Service则优先使用Apimanagers设置过的Service。
 此设置必须在所有Api调用前设置，建议在AppDelegate 的didFinishLaunchingWithOptions方法里设置

 @param serviceClassName 要设置的Service的类名
 */
- (int)setCommonServiceWithServiceClassName:(NSString *)serviceClassName;

@end

NS_ASSUME_NONNULL_END
