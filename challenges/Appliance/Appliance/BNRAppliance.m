//
//  BNRAppliance.m
//  Appliance
//
//  Created by Wayne on 2017/5/15.
//  Copyright © 2017年 Wayne. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance
- (instancetype)init {
    //Call the NSObject's init method
    self = [super init];
    
    //Did it return sth non-nil?
    if (self) {
        
        //Give voltage a starting value
        _voltage = 120;
    }
    
    // Return a pointer to the new object
    return self;
}
@end
