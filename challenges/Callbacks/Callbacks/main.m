//
//  main.m
//  Callbacks
//
//  Created by wayne on 2017/5/10.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"
#import "BNRObserver.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRLogger *logger = [[BNRLogger alloc] init];
        
        __unused NSTimer *timer =
        [NSTimer scheduledTimerWithTimeInterval:2.0f
                                         target:logger
                                       selector:@selector(updateLastTime:)
                                       userInfo:nil
                                        repeats:YES];
        
        __unused BNRObserver *observer = [[BNRObserver alloc] init];
        [logger addObserver: observer
                 forKeyPath:@"lastTime"
                    options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                    context:nil];
        
        //notification callback
//        [[NSNotificationCenter defaultCenter] addObserver:logger
//                                                 selector:@selector(zoneChange:)
//                                                     name:NSSystemTimeZoneDidChangeNotification
//                                                   object:nil];

                //notification using block
//        [[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification object:nil queue:nil usingBlock:^(NSNotification * _Nonnull note) {
//            NSLog(@"system time zone has been changed");
//        }];
        
//        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/files/205/205-0.txt"];
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
//                                                                              delegate:logger
//                                                                      startImmediately:YES];
        
//        __unused NSTimer *time = [NSTimer scheduledTimerWithTimeInterval:2.0
//                                                         target:logger
//                                                       selector:@selector(updateLastTime:)
//                                                       userInfo:nil
//                                                        repeats:YES];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
