//
//  LAServerPickVC.m
//  LAPro
//
//  Created by Luca on 2019/4/9.
//  Copyright © 2019 Luca. All rights reserved.
//

#import "LAServerPickVC.h"


//屏幕宽度
#define LAScreenW ([UIScreen mainScreen].bounds.size.width)
//屏幕高度
#define LAScreenH ([UIScreen mainScreen].bounds.size.height)

@interface LAServerPickVC ()

//生产
@property (nonatomic, strong) UIButton *releaseBtn;
@property (nonatomic, strong) UIButton *devBtn;

@end

@implementation LAServerPickVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.releaseBtn];
    [self.view addSubview:self.devBtn];
}

- (void)clickAction:(UIButton *)button{
    
    NSString *className = nil;
    if (button == self.releaseBtn) {
        className = @"LCServiceDistribut";
    }else{
        className = @"LCServiceTest";
    }
    if (_resultBlk) {
        _resultBlk(className);
    }
}

#pragma mark - set/get
-(UIButton *)devBtn{
    
    if (!_devBtn) {
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake((LAScreenW-100)/2, LAScreenH/2+25, 100, 100)];
        button.layer.cornerRadius = button.frame.size.height/2.0;
        button.clipsToBounds = YES;
        [button setTitle:@"开发环境" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        button.backgroundColor = [UIColor grayColor];
        [button addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
        _devBtn = button;
    }
    return _devBtn;
}
-(UIButton *)releaseBtn{
    
    if (!_releaseBtn) {
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake((LAScreenW-100)/2, LAScreenH/2-125, 100, 100)];
        button.layer.cornerRadius = button.frame.size.height/2.0;
        button.clipsToBounds = YES;
        [button setTitle:@"生产环境" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blackColor];
        [button addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
        _releaseBtn = button;
    }
    return _releaseBtn;
}



@end
