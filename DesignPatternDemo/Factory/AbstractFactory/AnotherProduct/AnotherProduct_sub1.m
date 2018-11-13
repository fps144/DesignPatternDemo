//
//  AnotherProduct_sub1.m
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "AnotherProduct_sub1.h"

@implementation AnotherProduct_sub1
@synthesize name = _name;

- (AnotherProduct *)create {
    _name = @"another_sub1";
    return self;
}

@end
