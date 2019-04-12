//
//  LASeviceManager.m
//  LAKit
//
//  Created by Luca on 2019/4/12.
//  Copyright © 2019 Luca. All rights reserved.
//

#import "LASeviceManager.h"
#import "AppDelegate.h"
#import "LAServerPickVC.h"
#import "LANetworkConfig.h"

NSString * const LAServerTypeUserdefaultKey = @"LAServerTypeUserdefaultKey";

@implementation LASeviceManager

//选择环境
+ (void)pickServerResult:(ResultBlk)result{
    
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"LANetworkingConfig.plist" ofType:nil];
    NSDictionary *infoDic = [NSDictionary dictionaryWithContentsOfFile:filePath];
    BOOL isTestPack = [[infoDic objectForKey:@"isTestPack"] boolValue];
    if (isTestPack) {
        
        NSString *serviceClassName = [[NSUserDefaults standardUserDefaults] objectForKey:LAServerTypeUserdefaultKey];
        if (serviceClassName == nil) {
            //为测试包，弹选择环境页面
            AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
            LAServerPickVC *serverPickVC = [[LAServerPickVC alloc]init];
            serverPickVC.resultBlk = ^(NSString * _Nonnull serviceClassName) {
                
                [[NSUserDefaults standardUserDefaults] setObject:serviceClassName forKey:LAServerTypeUserdefaultKey];
                [[LANetworkConfig sharedInstance]setCommonServiceWithServiceClassName:serviceClassName];
                result();
            };
            appDelegate.window.rootViewController = serverPickVC;
            [appDelegate.window makeKeyAndVisible];
        }else{
            [[LANetworkConfig sharedInstance]setCommonServiceWithServiceClassName:serviceClassName];
            if (result) {
                result();
            }
        }
    }else{
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:LAServerTypeUserdefaultKey];
        [[LANetworkConfig sharedInstance]setCommonServiceWithServiceClassName:@"LCServiceDistribut"];
        
        //为上架提审、appstore包,不弹
        if (result) {
            result();
        }
    }
}
@end
