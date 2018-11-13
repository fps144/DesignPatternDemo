//
//  Product_sub2.m
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "Product_sub2.h"

@implementation Product_sub2
@synthesize name = _name;

- (Product *)create {
    _name = @"sub2";
    return self;
}

@end
