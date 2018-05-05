//
//  main.m
//  Objective-C_7
//
//  Created by 佐藤亘 on 2018/05/02.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *patient1 = [[Patient alloc] initWithName:@"Wataru" andAge:27 andConditions:[NSArray arrayWithObjects:@"headache", @"running nose"] andHelthCard:TRUE];
        
        Patient *patient2 = [[Patient alloc] initWithName:@"Asami" andAge:27 andConditions:[NSArray arrayWithObjects:@"stomachache", @"gagging"] andHelthCard:FALSE];
        
        
        Doctor *doctor1 = [[Doctor alloc] initWithName:@"Rodrigo" andSpecialization:@"internal"];
        Doctor *doctor2 = [[Doctor alloc] initWithName:@"Paulo" andSpecialization:@"surgery"];
        
        [doctor1 seeThePatients:patient1];
        [doctor2 seeThePatients:patient2];
    }
    return 0;
}
