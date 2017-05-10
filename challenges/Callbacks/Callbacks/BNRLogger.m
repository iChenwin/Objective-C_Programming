//
//  BNRLogger.m
//  Callbacks
//
//  Created by wayne on 2017/5/10.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import "BNRLogger.h"

@interface BNRLogger ()
- (void)zoneChange:(NSNotification *)note;
@end

@implementation BNRLogger
- (NSString *)lastTimeString {
    static NSDateFormatter *formatter = nil;
    if (!formatter) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setTimeStyle:NSDateFormatterMediumStyle];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [formatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t {
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"set time to:%@", self.lastTimeString);
}

- (void)zoneChange:(NSNotification *)note {
    NSLog(@"system time zone has been changed");
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    NSLog(@"received %lu bytes", [data length]);
    
    //lazy init of incomingData
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Got it all");
    NSString *string = [[NSString alloc] initWithData:_incomingData
                                             encoding:NSUTF8StringEncoding];
    
    NSError *error;
    [_incomingData writeToFile:@"/tmp/Walden.txt" options:NSDataWritingAtomic error:&error];
    if (error) {
        NSLog(@"writing failed: %@", [error localizedDescription]);
    }
    _incomingData = nil;
    
    NSLog(@"string has %lu characters", [string length]);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}
@end
