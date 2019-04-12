//
//  LASeviceManager.h
//  LAKit
//
//  Created by Luca on 2019/4/12.
//  Copyright © 2019 Luca. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//环境存储的key
extern NSString * const LAServerTypeUserdefaultKey;
typedef void(^ResultBlk)(void);

@interface LASeviceManager : NSObject

//选择环境
+ (void)pickServerResult:(ResultBlk)result;

@end

NS_ASSUME_NONNULL_END
