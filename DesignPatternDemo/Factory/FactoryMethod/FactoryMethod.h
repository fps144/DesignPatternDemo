//
//  FactoryMethod.h
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FactoryMethod : NSObject

+ (id)createMethodProduct;

@end

NS_ASSUME_NONNULL_END
