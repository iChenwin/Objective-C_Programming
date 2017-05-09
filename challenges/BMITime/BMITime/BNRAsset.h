//
//  BNRAsset.h
//  BMITime
//
//  Created by wayne on 2017/5/8.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

@interface BNRAsset : NSObject
@property (nonatomic, copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;
@property (nonatomic, weak) BNREmployee *holder;
@end
