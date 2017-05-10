//
//  BNRStockHolding.m
//  Stocks
//
//  Created by wayne on 2017/5/3.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding
- (float)costInDollar {
    return _numberOfShares * _purchaseSharePrice;
}

- (float)valueInDollars {
    return _numberOfShares * _currentSharePrice;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<holding:%@ value:%.1f>", self.stockName, [self valueInDollars]];
}
@end
