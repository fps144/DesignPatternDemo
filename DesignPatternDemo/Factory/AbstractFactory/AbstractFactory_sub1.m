//
//  AbstractFactory_sub1.m
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "AbstractFactory_sub1.h"
#import "AbstractFactory+Super.h"
#import "Product_sub1.h"
#import "AnotherProduct_sub1.h"

@implementation AbstractFactory_sub1

+ (id)createProduct {
    return [[[Product_sub1 alloc] init] create];
}

+ (id)createAnotherProduct {
    return [[[AnotherProduct_sub1 alloc] init] create];
}

@end
