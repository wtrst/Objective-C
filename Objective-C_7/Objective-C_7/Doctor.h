//
//  Doctor.h
//  Objective-C_7
//
//  Created by 佐藤亘 on 2018/05/02.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescription.h"

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
@property NSString *disease;
@property NSArray *patients;

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;
-(void)seeThePatients:(id)patient;
-(id)getAPrescription:(id)patient;


@end
