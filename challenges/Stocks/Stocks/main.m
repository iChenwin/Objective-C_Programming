//
//  main.m
//  Stocks
//
//  Created by wayne on 2017/5/3.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        BNRStockHolding *holdingA = [[BNRStockHolding alloc] init];
//        holdingA.purchaseSharePrice = 2.3;
//        holdingA.currentSharePrice = 4.5;
//        holdingA.numberOfShares = 40;
//        
//        BNRStockHolding *b = [[BNRStockHolding alloc] init];
//        b.purchaseSharePrice = 12.19;
//        b.currentSharePrice = 10.58;
//        b.numberOfShares = 90;
//        
//        BNRStockHolding *c = [[BNRStockHolding alloc] init];
//        c.purchaseSharePrice = 45.1;
//        c.currentSharePrice = 49.51;
//        c.numberOfShares = 210;
//        
//        NSArray *holdArr = @[holdingA, b, c];
//        
//        for (BNRStockHolding *holding in holdArr) {
//            NSLog(@"value is %.2f", holding.valueInDollars);
//        }
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        NSArray *array = @[@"XYZ", @"ABC", @"LMN", @"DEF", @"DJI", @"ALI", @"FBK"];
        for (int i  = 0; i < 7; i++) {
            float randValue = (float)rand() / RAND_MAX;
            BNRStockHolding *holding = [[BNRStockHolding alloc] init];
            holding.purchaseSharePrice = 2.3;
            holding.currentSharePrice = 4.5 + randValue;
            holding.numberOfShares = 40;
            holding.stockName = array[i];
            [portfolio addHolding:holding];
        }
        NSLog(@"portfolio:%@", portfolio);
        
        //most valuable holding
        NSArray *mostValuableHoldings = [portfolio mostValuableHolding];
        NSLog(@"most valuable:%@", mostValuableHoldings);
        
        NSSortDescriptor *alpha = [NSSortDescriptor sortDescriptorWithKey:@"stockName" ascending:YES];
        NSArray *holdingsInAlpha = [portfolio.holdings sortedArrayUsingDescriptors:@[alpha]];
        NSLog(@"holdings:%@", holdingsInAlpha);
        mostValuableHoldings = nil;
    }
    return 0;
}
