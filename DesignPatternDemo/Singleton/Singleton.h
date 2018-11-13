//
//  Singleton.h
//  DesignPatternsDemo
//
//  Created by Songyu on 2018/10/30.
//  Copyright © 2018 Nanmen. All rights reserved.
//

#ifndef Singleton_h
#define Singleton_h

#import "Singleton_SingleThread.h"
#import "Singleton_Lock.h"
#import "Singleton_GCD.h"

#pragma mark - Demo
void singleton_demo(void) {
    Singleton_SingleThread *ss = [Singleton_SingleThread sharedInterface];
    NSLog(@"ss = %@\n", ss);
    ss = nil;
    ss = [Singleton_SingleThread sharedInterface];
    NSLog(@"ss (after set to nil) = %@\n", ss);
    
    Singleton_Lock *sl = [Singleton_Lock sharedInterface];
    Singleton_GCD *sg = [Singleton_GCD sharedInterface];
    NSLog(@"-> Singleton_SingleThread = %@ | Singleton_Lock = %@ | Singleton_GCD = %@", ss, sl, sg);
}

#endif /* Singleton_h */
