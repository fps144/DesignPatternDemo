//
//  AbstractFactory_sub2.m
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "AbstractFactory_sub2.h"
#import "AbstractFactory+Super.h"
#import "Product_sub2.h"
#import "AnotherProduct_sub2.h"

@implementation AbstractFactory_sub2

+ (id)createProduct {
    return [[[Product_sub2 alloc] init] create];
}

+ (id)createAnotherProduct {
    return [[[AnotherProduct_sub2 alloc] init] create];
}

@end
