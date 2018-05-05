//
//  Patient.h
//  Objective-C_7
//
//  Created by 佐藤亘 on 2018/05/02.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"

@interface Patient : NSObject

@property NSString *name;
@property int age;
@property NSArray *conditions;
@property BOOL helthCard;

-(instancetype)initWithName:(NSString *)name andAge:(int)age andConditions:(NSArray *)conditions andHelthCard:(BOOL)helthCard;
-(id)requestMedication;

@end
