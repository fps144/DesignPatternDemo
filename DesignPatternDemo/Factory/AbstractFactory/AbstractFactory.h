//
//  AbstractFactory.h
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
#import "AnotherProduct.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, AbstractProductType) {
    AbstractProductType_1,
    AbstractProductType_2
};

typedef NS_ENUM(NSUInteger, AnotherAbstractProductType) {
    AnotherAbstractProductType_1,
    AnotherAbstractProductType_2
};

@interface AbstractFactory : NSObject

+ (Product *)createAbstractProductWithType:(AbstractProductType)type;

+ (AnotherProduct *)createAnotherAbstractProductWithType:(AnotherAbstractProductType)type;

@end

NS_ASSUME_NONNULL_END
