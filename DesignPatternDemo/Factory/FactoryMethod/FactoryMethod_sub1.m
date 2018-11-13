//
//  FactoryMethod_sub1.m
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "FactoryMethod_sub1.h"
#import "Product_sub1.h"

@implementation FactoryMethod_sub1

+ (id)createMethodProduct {
    return [[[Product_sub1 alloc] init] create];
}

@end
