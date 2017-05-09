//
//  BNREmployee.m
//  BMITime
//
//  Created by wayne on 2017/5/8.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@implementation BNREmployee
- (void)setAssets:(NSArray *)assets {
    _assets = [assets mutableCopy];
}
- (void)addAsset:(BNRAsset *)a {
    if (!_assets) {
        _assets = [[NSMutableArray alloc] init];
    }
    
    [_assets addObject:a];
    a.holder = self;
}
- (void)removeAsset:(BNRAsset *)a {
    if (_assets) {
        [_assets removeObject:a];
    }
}
- (unsigned int)valueOfAssets {
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}
- (double)yearsOfEmployment {
    if (self.hireDate) {
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
    } else {
        return 0;
    }
}
- (NSString *)description {
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}
- (void)dealloc {
    NSLog(@"deallocating %@", self);
}
@end
