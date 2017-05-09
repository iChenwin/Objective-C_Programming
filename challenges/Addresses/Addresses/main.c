//
//  main.c
//  Addresses
//
//  Created by wayne on 2017/4/27.
//  Copyright © 2017年 wayne. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", &i);
    printf("this func start at %p\n", main);
    *addressOfI = 89;
    printf("Now i is %d\n", i);
    printf("an int is %zu bytes\n", sizeof(i));
    printf("an pointer is %zu bytes\n", sizeof(addressOfI));
    printf("an float is %zu bytes\n", sizeof(float));
    
    return 0;
}
