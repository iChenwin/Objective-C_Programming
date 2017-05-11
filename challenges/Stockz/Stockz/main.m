//
//  main.m
//  Stockz
//
//  Created by wayne on 2017/5/11.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"APPL"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInteger:200]
                  forKey:@"shares"];
        [stock setObject:@[@"a", @"b", @"c"]
                  forKey:@"array"];
        [stock setObject:[NSData dataWithBytes:@"hello" length:5]
                  forKey:@"data"];
        [stock setObject:[NSDate date]
                  forKey:@"date"];
        [stock setObject:@{@"ower":@"Wayne", @"relation":@"friend"}
                  forKey:@"dictionary"];
        [stock setObject:[NSNumber numberWithFloat:3.1415926f]
                  forKey:@"pi"];
        [stock setObject:[NSNumber numberWithBool:YES]
                  forKey:@"bool"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInteger:160]
                  forKey:@"shares"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
    }
    return 0;
}
