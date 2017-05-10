//
//  main.m
//  BMITime
//
//  Created by wayne on 2017/5/3.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        BNREmployee *mikey = [[BNREmployee alloc] init];
//        
//        [mikey setWeightInKilos:96];
//        [mikey setHeightInMeters:1.8];
//        
//        float height = [mikey heightInMeters];
//        int weight = [mikey weightInKilos];
//        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
//        
//        float bmi = [mikey bodyMassIndex];
//        NSLog(@"mikey has a BMI of %f", bmi);
//        
//        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//        [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
//        [formatter setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
//        mikey.hireDate = [formatter dateFromString:@"2010-08-02 09:00:00"];
//        NSLog(@"hireDate:%@, yearOfEmployment:%.2f", mikey.hireDate, [mikey yearsOfEmployment]);
        
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        for (int i = 0; i < 10; i++) {
            BNREmployee *mikey = [[BNREmployee alloc] init];
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i / 10;
            mikey.employeeID = i;
            
            [employees addObject:mikey];
        }
        
        NSMutableArray *allassets = [[NSMutableArray alloc] init];
        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            NSUInteger randomIndex = random() % [employees count];
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            [randomEmployee addAsset:asset];
            [allassets addObject:asset];
        }
        
        //sorting array
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:@[voa, eid]];
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"allassets:%@", allassets);
        
//        NSLog(@"remove a asset");
//        BNRAsset *asset = ((BNREmployee *)employees[1]).assets[0];
//        [employees[1] removeAsset:asset];
//        NSLog(@"Employees: %@", employees);
        
        //filter array
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 400"];
        NSArray *toBeReclaimed = [allassets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed:%@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of arrays");
        allassets = nil;
        employees = nil;
    }
    return 0;
}
