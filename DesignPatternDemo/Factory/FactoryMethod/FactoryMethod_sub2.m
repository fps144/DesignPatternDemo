//
//  FactoryMethod_sub2.m
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "FactoryMethod_sub2.h"
#import "Product_sub2.h"

@implementation FactoryMethod_sub2

+ (id)createMethodProduct {
    return [[[Product_sub2 alloc] init] create];
}

@end
