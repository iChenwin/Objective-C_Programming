//
//  main.m
//  DateList
//
//  Created by wayne on 2017/5/3.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24 * 3600];
        NSDate *yesterday = [now dateByAddingTimeInterval: - 24* 3600];
        
        NSArray *arr = @[yesterday, now, tomorrow];
        
        NSLog(@"first:%@, last:%@", arr[0], arr[2]);
    }
    return 0;
}
