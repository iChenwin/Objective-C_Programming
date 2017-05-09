//
//  main.c
//  BeerSong
//
//  Created by wayne on 2017/4/26.
//  Copyright © 2017年 wayne. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles) {
    if (numberOfBottles == 0) {
        printf("There are simple no more bottles of beer on the wall.\n\n");
    } else {
        printf("%d bottles of beer on the wall, %d botles of beer.\n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down, pass around, %d bottles of beer on the wall.\n\n", oneFewer);
        singSongFor(oneFewer);
        
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    singSongFor(4);
    return 0;
}
