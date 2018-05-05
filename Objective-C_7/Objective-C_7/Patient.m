//
//  Patient.m
//  Objective-C_7
//
//  Created by 佐藤亘 on 2018/05/02.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(int)age andConditions:(NSArray *)conditions andHelthCard:(BOOL)helthCard{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.conditions = conditions;
        self.helthCard = helthCard;
    }
    
    return self;
};

- (Prescription *)requestMedication{
    return [[Doctor alloc] getAPrescription:self];
}

@end
