//
//  AnotherProduct_sub2.m
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "AnotherProduct_sub2.h"

@implementation AnotherProduct_sub2
@synthesize name = _name;

- (AnotherProduct *)create {
    _name = @"another_sub2";
    return self;
}

@end
