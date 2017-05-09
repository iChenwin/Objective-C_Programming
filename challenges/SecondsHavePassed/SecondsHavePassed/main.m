//
//  main.m
//  SecondsHavePassed
//
//  Created by wayne on 2017/5/2.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1992];
        [comps setMonth:5];
        [comps setDay:27];
        [comps setHour:1];
        NSCalendar *g = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSDate *now = [NSDate date];
        
        double secondsPassed = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"I have lived for %ld seconds", (long)secondsPassed);
        
        NSString *name = [NSString stringWithUTF8String:readline(NULL)];
        NSLog(@"%@ is cool!", name);
    }
    return 0;
}
