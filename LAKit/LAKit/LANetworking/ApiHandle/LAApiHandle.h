//
//  LAApiHandle.h
//  LCPro
//
//  Created by Luca on 2019/4/9.
//  Copyright © 2019 Luca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LANetworkingENUM.h"
#import "LAResponse.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^LAApiRequestResult)(LAResponse *response);

@interface LAApiHandle : NSObject

+ (instancetype)sharedInstance;

//GET
- (NSInteger)GETRequsetWithParams:(NSDictionary *)params
            servieIdentifier:(NSString *)servieIdentifier
                     apiName:(NSString *)apiName
                     success:(LAApiRequestResult)success
                        fail:(LAApiRequestResult)fail;
//POST
- (NSInteger)POSTRequsetWithParams:(NSDictionary *)params
            servieIdentifier:(NSString *)servieIdentifier
                     apiName:(NSString *)apiName
                     success:(LAApiRequestResult)success
                        fail:(LAApiRequestResult)fail;
//PUT
- (NSInteger)PUTRequsetWithParams:(NSDictionary *)params
            servieIdentifier:(NSString *)servieIdentifier
                     apiName:(NSString *)apiName
                     success:(LAApiRequestResult)success
                        fail:(LAApiRequestResult)fail;
//DELETE
- (NSInteger)DELETERequsetWithParams:(NSDictionary *)params
            servieIdentifier:(NSString *)servieIdentifier
                     apiName:(NSString *)apiName
                     success:(LAApiRequestResult)success
                        fail:(LAApiRequestResult)fail;
@end

NS_ASSUME_NONNULL_END
