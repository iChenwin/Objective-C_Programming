//
//  BNRPerson.m
//  BMITime
//
//  Created by wayne on 2017/5/3.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float)bodyMassIndex {
    return _weightInKilos / (_heightInMeters * _heightInMeters);
}
@end
