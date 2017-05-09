//
//  BNRPortfolio.m
//  Stocks
//
//  Created by wayne on 2017/5/8.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio () {
    NSMutableArray *_holdings;
}

@end

@implementation BNRPortfolio
- (void)addHolding:(BNRStockHolding *)h{
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    
    [_holdings addObject:h];

}
- (float)totalValue {
    float sum = 0;
    for (BNRStockHolding *holding in _holdings) {
        sum += [holding valueInDollars];
    }
    
    return sum;
}
@end
