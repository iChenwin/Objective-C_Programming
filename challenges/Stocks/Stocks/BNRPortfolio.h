//
//  BNRPortfolio.h
//  Stocks
//
//  Created by wayne on 2017/5/8.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject 

@property (nonatomic) NSArray *holdings;
@property (nonatomic) float   totalValue;

- (void)addHolding:(BNRStockHolding *)h;
@end
