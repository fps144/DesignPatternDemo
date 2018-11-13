//
//  AbstractFactory.m
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "AbstractFactory.h"
#import "AbstractFactory+Super.h"
#import "AbstractFactory_sub1.h"
#import "AbstractFactory_sub2.h"

@implementation AbstractFactory

+ (Product *)createAbstractProductWithType:(AbstractProductType)type {
    switch (type) {
        case AbstractProductType_1:
            return [AbstractFactory_sub1 createProduct];
            break;
        case AbstractProductType_2:
            return [AbstractFactory_sub2 createProduct];
            break;
    }
}

+ (AnotherProduct *)createAnotherAbstractProductWithType:(AnotherAbstractProductType)type {
    switch (type) {
        case AnotherAbstractProductType_1:
            return [AbstractFactory_sub1 createAnotherProduct];
            break;
        case AnotherAbstractProductType_2:
            return [AbstractFactory_sub2 createAnotherProduct];
        default:
            break;
    }
}

+ (id)createProduct {
    return nil;
}

+ (id)createAnotherProduct {
    return nil;
}

@end
