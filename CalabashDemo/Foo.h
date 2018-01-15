//
//  Foo.h
//  CalabashDemo
//
//  Created by sujian on 15/01/2018.
//  Copyright © 2018 sujian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Foo : NSObject
@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger age;
- (NSString *)calculate:(NSInteger)a anthor:(NSInteger)b;
@end
