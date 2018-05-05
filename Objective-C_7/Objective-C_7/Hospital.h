//
//  Hospital.h
//  Objective-C_7
//
//  Created by 佐藤亘 on 2018/05/04.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"

@interface Hospital : NSObject

@property NSMutableDictionary *prescriptions;

-(instancetype)initWithPrescriptions:(NSMutableDictionary *)prescriptions;
-(void)addPrescriptions:(id)prescription;
-(NSMutableDictionary *)getPrescriptions;
@end
