//
//  Doctor.m
//  Objective-C_7
//
//  Created by 佐藤亘 on 2018/05/02.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"


@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization{
    self = [super init];
    if (self) {
        self.name = name;
        self.specialization = specialization;
    }
    
    return self;
}

- (void)seeThePatients:(Patient *)patient{
    if (patient.helthCard) {
        [self.patients arrayByAddingObject:patient];
    }
}

- (Prescription *)getAPrescription:(Patient *)patient{
    return [[Prescription alloc] makeAPrescription:patient andDoctor:self];
}


@end
