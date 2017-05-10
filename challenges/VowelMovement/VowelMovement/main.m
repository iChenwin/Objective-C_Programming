//
//  main.m
//  VowelMovement
//
//  Created by wayne on 2017/5/10.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^arrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        
        NSLog(@"original strings:%@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
//        void (^devowelizer)(id, NSUInteger, BOOL *);
        
//        arrayEnumerationBlock devowelizer;
//        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop) {        //anonymous block
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            if (yRange.location != NSNotFound) {
                *stop = YES;
                return;
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        }];
        
//        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"devowelized string:%@", devowelizedStrings);
    }
    return 0;
}
