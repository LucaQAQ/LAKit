//
//  LAApiHandle.m
//  LCPro
//
//  Created by Luca on 2019/4/9.
//  Copyright © 2019 Luca. All rights reserved.
//

#import "LAApiHandle.h"
#import "LAService.h"

@interface LAApiHandle()

@property (nonatomic, strong) LAService *service;

@end
@implementation LAApiHandle

+ (instancetype)sharedInstance{
    static dispatch_once_t onceToken;
    static LAApiHandle *sharedInstance = nil;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[LAApiHandle alloc] init];
    });
    return sharedInstance;
}

//GET
- (NSInteger)GETRequsetWithParams:(NSDictionary *)params
            servieIdentifier:(NSString *)servieIdentifier
                     apiName:(NSString *)apiName
                     success:(LAApiRequestResult)success
                        fail:(LAApiRequestResult)fail{
    
    return 1;
}
//POST
- (NSInteger)POSTRequsetWithParams:(NSDictionary *)params
             servieIdentifier:(NSString *)servieIdentifier
                      apiName:(NSString *)apiName
                      success:(LAApiRequestResult)success
                         fail:(LAApiRequestResult)fail{
    return 1;
}
//PUT
- (NSInteger)PUTRequsetWithParams:(NSDictionary *)params
            servieIdentifier:(NSString *)servieIdentifier
                     apiName:(NSString *)apiName
                     success:(LAApiRequestResult)success
                        fail:(LAApiRequestResult)fail{
    return 1;
}
//DELETE
- (NSInteger)DELETERequsetWithParams:(NSDictionary *)params
               servieIdentifier:(NSString *)servieIdentifier
                        apiName:(NSString *)apiName
                        success:(LAApiRequestResult)success
                           fail:(LAApiRequestResult)fail{
    return 1;
}
@end
