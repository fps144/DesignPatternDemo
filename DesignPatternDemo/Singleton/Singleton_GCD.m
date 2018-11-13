//
//  Singleton_GCD.m
//  DesignPatternsDemo
//
//  Created by Songyu on 2018/10/30.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "Singleton_GCD.h"

@implementation Singleton_GCD

static Singleton_GCD *instance;

+ (instancetype)sharedInterface {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
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
