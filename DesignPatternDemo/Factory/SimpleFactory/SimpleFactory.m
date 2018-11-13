//
//  SimpleFactory.m
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "SimpleFactory.h"
#import "Product_sub1.h"
#import "Product_sub2.h"

@implementation SimpleFactory

+ (Product *)createSimpleProductWithType:(SimpleProductType)type {
    switch (type) {
        case SimpleProductType_1:
            return [[[Product_sub1 alloc] init] create];
            break;
        case SimpleProductType_2:
            return [[[Product_sub2 alloc] init] create];
            break;
    }
}

@end
