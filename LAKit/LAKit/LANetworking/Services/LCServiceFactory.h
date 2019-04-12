//
//  LCServiceFactory.h
//  LAKit
//
//  Created by Luca on 2019/4/12.
//  Copyright © 2019 Luca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LAService.h"

NS_ASSUME_NONNULL_BEGIN

@interface LCServiceFactory : NSObject

+ (instancetype)sharedInstance;

/**
 工厂方法获取service

 @param serviceClassName 改service的类名
 @return service实例
 */
- (LAService *)serviceWithServiceClassName:(NSString *)serviceClassName;

@end

NS_ASSUME_NONNULL_END
