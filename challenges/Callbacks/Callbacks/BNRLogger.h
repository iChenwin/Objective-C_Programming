//
//  BNRLogger.h
//  Callbacks
//
//  Created by wayne on 2017/5/10.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate> {
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;
@end
