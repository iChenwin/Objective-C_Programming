//
//  main.c
//  Squarer
//
//  Created by wayne on 2017/4/26.
//  Copyright © 2017年 wayne. All rights reserved.
//

#include <stdio.h>

void square(int a) {
    int result = a * a;
    printf("\"%d\" squared is \"%d\".\n", a, result);
}

int main(int argc, const char * argv[]) {
    square(5);
    return 0;
}
