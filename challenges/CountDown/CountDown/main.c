//
//  main.c
//  CountDown
//
//  Created by wayne on 2017/4/27.
//  Copyright © 2017年 wayne. All rights reserved.
//

#include <stdio.h>
#include <readline/readline.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    printf("where to start?");
    const char *num = readline(NULL);
    int i = atoi(num);
    for (; i >= 0; i -= 3) {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("Found me!\n");
        }
    }
    return 0;
}
