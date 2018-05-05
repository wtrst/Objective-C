//
//  Prescription.m
//  Objective-C_7
//
//  Created by 佐藤亘 on 2018/05/04.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype)initWithPrescription:(NSString *)prescription andDoctor:(Doctor *)doctor andPatient:(Patient *)patient{
    self = [super init];
    if (self) {
        self.prescription = prescription;
        self.doctor = doctor;
        self.patient = patient;
    }
    
    return self;
}

- (Prescription *)makeAPrescription:(Patient *)patient andDoctor:(Doctor *)doctor{
    self.doctor = doctor;
    self.patient = patient;
    
    for (NSString *condision in patient.conditions) {
        if ([condision isEqualToString:@"headache"] && [condision isEqualToString:@"running nose"]) {
            self.prescription = @"Cold";
        }
    }
    
    return self;
}

@end
