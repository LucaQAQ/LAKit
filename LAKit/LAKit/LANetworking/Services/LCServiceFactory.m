//
//  LCServiceFactory.m
//  LAKit
//
//  Created by Luca on 2019/4/12.
//  Copyright © 2019 Luca. All rights reserved.
//

#import "LCServiceFactory.h"

@interface LCServiceFactory()

@property (nonatomic, strong) NSMutableDictionary *serviceCache;

@end

@implementation LCServiceFactory
+ (instancetype)sharedInstance{
    
    static dispatch_once_t onceToken;
    static LCServiceFactory *sharedInstance;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[LCServiceFactory alloc] init];
    });
    return sharedInstance;
}
- (LAService *)serviceWithServiceClassName:(NSString *)serviceClassName{
    
    if (!self.serviceCache[serviceClassName]) {
        
        id service = [[NSClassFromString(serviceClassName) alloc]init];
        NSAssert(service, [NSString stringWithFormat:@"无法创建service，请检查serviceClassName是否正确"],service);
        return service;
    }
    return self.serviceCache[serviceClassName];
}

#pragma mark - set/get
-(NSMutableDictionary *)serviceCache{
    
    if (!_serviceCache) {
        
        _serviceCache = [[NSMutableDictionary alloc]init];
    }
    return _serviceCache;
}
@end
