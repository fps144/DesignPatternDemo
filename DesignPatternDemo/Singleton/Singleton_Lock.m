//
//  Singleton_Lock.m
//  DesignPatternsDemo
//
//  Created by Songyu on 2018/10/30.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "Singleton_Lock.h"

@implementation Singleton_Lock

static Singleton_Lock *instance;

+ (instancetype)sharedInterface {
    @synchronized (self) {
        if (!instance) {
            instance = [[self alloc] init];
        }
    }
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    instance = [super allocWithZone:zone];
    return instance;
}

- (id)copyWithZone:(NSZone *)zone {
    return instance;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return instance;
}

@end
