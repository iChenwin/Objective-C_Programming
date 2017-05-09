//
//  BNRStockHolding.h
//  Stocks
//
//  Created by wayne on 2017/5/3.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic) NSString *stockName;

- (float)costInDollar;
- (float)valueInDollars;

@end
