//
//  main.m
//  Groceries
//
//  Created by wayne on 2017/5/3.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSMutableArray *grocery = [NSMutableArray array];
//        [grocery addObject:@"Loaf of bread"];
//        [grocery addObjectsFromArray:@[@"Container of milk", @"Stick of butter"]];
//        NSLog(@"My grocery list is:");
//        for (NSString *goods in grocery) {
//            NSLog(@"%@", goods);
//        }
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        for (NSString *n in names) {
//            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
//            
//            if (r.location != NSNotFound) {
//                NSLog(@"%@", n);
//            }
            
            if (![n isEqualToString:@""] && [words containsObject:[n lowercaseString]]) {
                NSLog(@"%@", n);
            }
            
//以下方法不正确，rangeOfString不仅做了多余的遍历，得到的包含子字符串的结果并不符合题设。
//            for (NSString *w in words) {
//                NSRange range = [n rangeOfString:w options:NSCaseInsensitiveSearch];
//                if (range.location != NSNotFound) {
//                    NSLog(@"%@", w);
//                }
//            }
        }
    }
    return 0;
}
