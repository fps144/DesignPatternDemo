//
//  AnotherProduct.h
//  FactoryDesignPattern
//
//  Created by Songyu on 2018/10/28.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AnotherProduct : NSObject

@property(nonatomic, copy, readonly) NSString *name;

- (AnotherProduct *)create;

@end

NS_ASSUME_NONNULL_END
