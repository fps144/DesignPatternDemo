//
//  ViewController.m
//  DesignPatternDemo
//
//  Created by Songyu on 2018/11/13.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#import "ViewController.h"
#import "DPHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self factory_demo];
//    [self singleton_demo];
    [self mvc_demo];
}

#pragma mark - Demo
- (void)factory_demo {
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

- (void)singleton_demo {
    Singleton_SingleThread *ss = [Singleton_SingleThread sharedInterface];
    NSLog(@"ss = %@\n", ss);
    ss = nil;
    ss = [Singleton_SingleThread sharedInterface];
    NSLog(@"ss (after set to nil) = %@\n", ss);
    
    Singleton_Lock *sl = [Singleton_Lock sharedInterface];
    Singleton_GCD *sg = [Singleton_GCD sharedInterface];
    NSLog(@"-> Singleton_SingleThread = %@ | Singleton_Lock = %@ | Singleton_GCD = %@", ss, sl, sg);
}

- (void)mvc_demo {
    NMMVCController *vc = [NMMVCController new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
