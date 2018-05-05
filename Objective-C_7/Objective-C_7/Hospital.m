//
//  Hospital.m
//  Objective-C_7
//
//  Created by 佐藤亘 on 2018/05/04.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import "Hospital.h"

@implementation Hospital

- (instancetype)initWithPrescriptions:(NSMutableDictionary *)prescriptions{
    self = [super init];
    if (self) {
        self.prescriptions = prescriptions;
    }
    return self;
}

- (void)addPrescriptions:(Prescription *)prescription{
    [self.prescriptions setObject:prescription forKey:prescription.patient];
}

- (NSMutableDictionary *)getPrescriptions{
    return self.prescriptions;
}


@end
