//
//  main.m
//  HostName
//
//  Created by wayne on 2017/5/2.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *myHost = [NSHost currentHost];
        NSString *computerName = [myHost localizedName];
        NSLog(@"My computer is called %@", computerName);
    }
    return 0;
}
