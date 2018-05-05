//
//  Prescription.h
//  Objective-C_7
//
//  Created by 佐藤亘 on 2018/05/04.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

@interface Prescription : NSObject

@property NSString *prescription;
@property id doctor;
@property id patient;

-(instancetype)initWithPrescription:(NSString *)prescription Doctor:(id)doctor andPatient:(id)patient;
-(Prescription *)makeAPrescription:(id)patient andDoctor:(id)doctor;

@end
