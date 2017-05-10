//
//  main.m
//  Callbacks
//
//  Created by wayne on 2017/5/10.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRLogger *logger = [[BNRLogger alloc] init];
        
        [[NSNotificationCenter defaultCenter] addObserver:logger
                                                 selector:@selector(zoneChange:)
                                                     name:NSSystemTimeZoneDidChangeNotification
                                                   object:nil];
        
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/files/205/205-0.txt"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];
        
//        __unused NSTimer *time = [NSTimer scheduledTimerWithTimeInterval:2.0
//                                                         target:logger
//                                                       selector:@selector(updateLastTime:)
//                                                       userInfo:nil
//                                                        repeats:YES];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
