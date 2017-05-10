//
//  main.m
//  Constants
//
//  Created by wayne on 2017/5/9.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\u03c0 is %.7f", M_PI);
        NSLog(@"%d is larger", MAX(10 ,16));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];//@"currency"];
        NSLog(@"Money is %@", currency);
    }
    return 0;
}
