//
//  NMMVCModel.m
//  DesignPatternDemo
//
//  Created by Songyu on 2018/11/13.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "NMMVCModel.h"

@implementation NMMVCModel

+ (void)getMokeDataWithHandlerBlock:(void (^)(NSArray<NMMVCModel *> * _Nonnull, NSError * _Nonnull))handler {
    NSMutableArray *mokeData = [NSMutableArray array];
    NSError *error;
    for (int i = 0; i < 10; ++i) {
        NMMVCModel *model = [NMMVCModel new];
        model.modelName = NSStringFromClass(self);
        model.modelNumber = i;
        [mokeData addObject:model];
    }
    if (mokeData.count == 0) {
        error = [NSError errorWithDomain:@"No data!" code:-1 userInfo:nil];
    }
    
    // 模拟网络请求，卡1秒
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.0 * NSEC_PER_SEC), dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        !handler?:handler(mokeData.copy, error);
    });
}

@end
