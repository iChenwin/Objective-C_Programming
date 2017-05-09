//
//  BNRAsset.m
//  BMITime
//
//  Created by wayne on 2017/5/8.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset
- (NSString *)description {
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%u> assigned in %@", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
    }
}
- (void)dealloc {
    NSLog(@"deallocationg %@", self);
}
@end
