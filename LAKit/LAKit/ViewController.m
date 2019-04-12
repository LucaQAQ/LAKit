//
//  ViewController.m
//  LAKit
//
//  Created by Luca on 2019/4/10.
//  Copyright © 2019 Luca. All rights reserved.
//

#import "ViewController.h"
#import "LAService.h"
#import "LANetworkConfig.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    LAService *service = [LANetworkConfig sharedInstance].commonService;
    NSLog(@"##=%@",service);
}


@end
