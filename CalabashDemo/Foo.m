//
//  Foo.m
//  CalabashDemo
//
//  Created by sujian on 15/01/2018.
//  Copyright © 2018 sujian. All rights reserved.
//

#import "Foo.h"

@implementation Foo
- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (NSString *)calculate:(NSInteger)a anthor:(NSInteger)b {
    return [NSString stringWithFormat:@"result = %ld", a + b];
}
@end
