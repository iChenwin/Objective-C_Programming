//
//  BNROwnedAppliance.m
//  Appliance
//
//  Created by wayne on 2017/5/15.
//  Copyright © 2017年 Wayne. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance ()
{
    NSMutableSet *_owerNames;
}
@end

@implementation BNROwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn {
    return [self initWithProductName:pn firstOwnerName:nil];
}

- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n
{
    if (self = [self initWithProductName:pn]) {
        _owerNames = [[NSMutableSet alloc] init];
        
        if (n) {
            [_owerNames addObject:n];
        }
        
    }
    
    return self;
}

- (void)addOwnerName:(NSString *)n {
    [_owerNames addObject:n];
}

- (void)removeOwnerName:(NSString *)n {
    [_owerNames removeObject:n];
}

- (NSSet *)ownerNames {
    return [_owerNames copy];
}
@end
