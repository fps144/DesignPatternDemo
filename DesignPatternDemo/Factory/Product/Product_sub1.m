//
//  Product_sub1.m
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "Product_sub1.h"

@implementation Product_sub1
@synthesize name = _name;

- (Product *)create {
    _name = @"sub1";
    return self;
}

@end
