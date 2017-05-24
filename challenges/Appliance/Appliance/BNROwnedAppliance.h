//
//  BNROwnedAppliance.h
//  Appliance
//
//  Created by wayne on 2017/5/15.
//  Copyright © 2017年 Wayne. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance
@property (readonly) NSSet *ownerNames;

// The designated initializer
- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n;
- (void)addOwnerName:(NSString *)n;
- (void)removeOwnerName:(NSString *)n;
@end
