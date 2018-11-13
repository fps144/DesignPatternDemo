//
//  SimpleFactory.h
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, SimpleProductType) {
    SimpleProductType_1,
    SimpleProductType_2
};

@interface SimpleFactory : NSObject

+ (Product *)createSimpleProductWithType:(SimpleProductType)type;

@end

NS_ASSUME_NONNULL_END
