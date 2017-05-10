//
//  main.m
//  Stringz
//
//  Created by wayne on 2017/5/9.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //write string to file
//        NSMutableString *str = [[NSMutableString alloc] init];
//        for (int i = 0; i < 10; i++) {
//            [str appendString:@"Objective-C is cool!\n"];
//        }
//        
//        NSError *error;
//        BOOL success = [str writeToFile:@"/tmp/cool.txt"
//              atomically:YES
//                encoding:NSUTF8StringEncoding
//                   error:&error];
//        
//        if (success) {
//            NSLog(@"done writing /tmp/cool.txt");
//        } else {
//            NSLog(@"writing failed:%@", [error localizedDescription]);
//        }
        
        //read string from file
//        NSError *error;
//        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"
//                                                        encoding:NSASCIIStringEncoding
//                                                           error:&error];
//        if (!str) {
//            NSLog(@"read file failed:%@", [error localizedDescription]);
//        } else {
//            NSLog(@"done reading. str:%@", str);
//        }
        
        //write data to file
        NSError __block *error;
        NSURL *url = [NSURL URLWithString:@"https://www.google.com/images/logos/ps_logo2.png"];
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        NSData __block *data;
        NSURLSession *session = [NSURLSession sharedSession];
        [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable _data, NSURLResponse * _Nullable _response, NSError * _Nullable _error) {
//            if (!data) {
//                NSLog(@"fetch failed:%@", [error localizedDescription]);
//            } else {
//                NSLog(@"the file is %lu bytes", (unsigned long)[data length]);
//                BOOL written = [data writeToFile:@"/tmp/google.png" options:0 error:&writeError];
//                
//                if (!written) {
//                    NSLog(@"write failed:%@", [writeError localizedDescription]);
//                } else {
//                    NSLog(@"success");
//                }
//            }
            data = _data;
            error = _error;
        }] resume];
        
        if (!data) {
            NSLog(@"fetch failed:%@", [error localizedDescription]);
        } else {
            NSLog(@"the file is %lu bytes", (unsigned long)[data length]);
            BOOL written = [data writeToFile:@"/tmp/google.png" options:0 error:&error];

            if (!written) {
                NSLog(@"write failed:%@", [error localizedDescription]);
            } else {
                NSLog(@"success");
            }
        }
    }
    return 0;
}
