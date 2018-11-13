//
//  Singleton_SingleThread.h
//  DesignPatternsDemo
//
//  Created by Songyu on 2018/10/30.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton_SingleThread : NSObject

+ (instancetype)sharedInterface;

@end

NS_ASSUME_NONNULL_END
