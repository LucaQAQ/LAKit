//
//  LAServerPickVC.h
//  LCPro
//
//  Created by Luca on 2019/4/9.
//  Copyright © 2019 Luca. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LASeviceManager.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^LAServerPickVCResult)(NSString *serviceClassName);

@interface LAServerPickVC : UIViewController

@property (nonatomic, copy) LAServerPickVCResult resultBlk;

@end

NS_ASSUME_NONNULL_END
