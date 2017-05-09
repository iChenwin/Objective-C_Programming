//
//  main.c
//  PBR
//
//  Created by wayne on 2017/4/28.
//  Copyright © 2017年 wayne. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches (double meter, int *feetPtr, float *inchPtr) {
    double rowFeet = meter * 3.28;
    int feet = floor(rowFeet);
    printf("feet:%ld, %ld", feet, *feetPtr);
}

int main(int argc, const char * argv[]) {
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    fractionPart = modf(pi, &integerPart);
    
    printf("integerPart:%.0f, fractionPart:%.2f\n", integerPart, fractionPart);
    return 0;
}
