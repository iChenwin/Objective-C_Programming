//
//  NSObserver.m
//  Callbacks
//
//  Created by Wayne on 2017/5/24.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import "BNRObserver.h"

@implementation BNRObserver
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSString *oldValue = [change objectForKey:NSKeyValueChangeOldKey];
    NSString *newValue = [change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"Observed: %@ of %@ was changed from %@ to %@", keyPath, object, oldValue, newValue);
}
@end
