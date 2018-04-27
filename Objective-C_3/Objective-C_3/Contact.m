//
//  Contact.m
//  Objective-C_3
//
//  Created by 佐藤亘 on 2018/04/19.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import "Contact.h"

@implementation Contact

# pragma mark - Constructor
- (instancetype)initWithContact:(NSString *)name andEmail:(NSString *)email andPhone:(NSString *)phone{
    self = [super init];
    if(self) {
        self.name = name;
        self.email = email;
        self.phone = phone;
    }
    return self;
}

@end
