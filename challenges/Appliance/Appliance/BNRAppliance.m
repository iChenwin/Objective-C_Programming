//
//  BNRAppliance.m
//  Appliance
//
//  Created by Wayne on 2017/5/15.
//  Copyright © 2017年 Wayne. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance
- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %d voltage>", self.productName, self.voltage];
}
- (instancetype)init {
    return [self initWithProductName:@"Unknown"];
}

- (instancetype)initWithProductName:(NSString *)pn {
    self = [super init];
    
    if (self) {
        _productName = [pn copy];
        _voltage = 120;
    }
    
    return self;
}
@end
