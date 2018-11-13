//
//  NMMVCModel.h
//  DesignPatternDemo
//
//  Created by Songyu on 2018/11/13.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NMMVCModel : NSObject

@property (nonatomic, copy) NSString *modelName;
@property (nonatomic) NSInteger modelNumber;

+ (void)getMokeDataWithHandlerBlock:(void(^)(NSArray<NMMVCModel *> *data, NSError *error))handler;

@end

NS_ASSUME_NONNULL_END
