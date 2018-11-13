//
//  Factory.h
//  DesignPatternsDemo
//
//  Created by Songyu on 2018/10/30.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#ifndef Factory_h
#define Factory_h

#import "SimpleFactory.h"
#import "FactoryMethod_sub1.h"
#import "FactoryMethod_sub2.h"
#import "AbstractFactory.h"

#pragma mark - Demo
void factory_demo(void) {
    Product *simple_product_1 = [SimpleFactory createSimpleProductWithType:SimpleProductType_1];
    NSLog(@"SimpleFactory:%@ - %@ \n", simple_product_1.name, [simple_product_1 class]);
    Product *simple_product_2 = [SimpleFactory createSimpleProductWithType:SimpleProductType_2];
    NSLog(@"SimpleFactory:%@ - %@ \n", simple_product_2.name, [simple_product_2 class]);
    
    Product *method_product_1 = [FactoryMethod_sub1 createMethodProduct];
    NSLog(@"FactoryMethod_1:%@ - %@ \n", method_product_1.name, [method_product_1 class]);
    Product *method_product_2 = [FactoryMethod_sub2 createMethodProduct];
    NSLog(@"FactoryMethod_2:%@ - %@ \n", method_product_2.name, [method_product_2 class]);
    
    Product *abstract_product_1 = [AbstractFactory createAbstractProductWithType:AbstractProductType_1];
    NSLog(@"AbstractFactory_1:%@ - %@ \n", abstract_product_1.name, [abstract_product_1 class]);
    Product *abstract_product_2 = [AbstractFactory createAbstractProductWithType:AbstractProductType_2];
    NSLog(@"AbstractFactory_2:%@ - %@ \n", abstract_product_2.name, [abstract_product_2 class]);
    AnotherProduct *abstract_another_product_1 = [AbstractFactory createAnotherAbstractProductWithType:AnotherAbstractProductType_1];
    NSLog(@"AbstractFactory_1:%@ - %@ \n", abstract_another_product_1.name, [abstract_another_product_1 class]);
    AnotherProduct *abstract_another_product_2 = [AbstractFactory createAnotherAbstractProductWithType:AnotherAbstractProductType_2];
    NSLog(@"AbstractFactory_2:%@ - %@ \n", abstract_another_product_2.name, [abstract_another_product_2 class]);
}

#endif /* Factory_h */
