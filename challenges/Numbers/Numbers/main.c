//
//  main.c
//  Numbers
//
//  Created by wayne on 2017/4/26.
//  Copyright © 2017年 wayne. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
//    unsigned long x = 255;
//    printf("x is %lu.\n", x);
//    printf("In octal, x is %lo.\n", x);
//    printf("In Hex, x is %lx.\n", x);
//    printf("10/3=%f\n", (float)10 / 3);
//    double y = 12345.6789;
//    printf("y is %f.\n", y);
//    printf("y is %e.\n", y);
    double oneDegree = 1 / 180.0 * M_PI;    //要求1 radian, 理解成1 degree.
    double sinResult = sin(1);
    printf("sin(1)=%.3f\n", sinResult);
    return 0;
}
