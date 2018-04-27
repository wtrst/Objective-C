//
//  Contact.h
//  Objective-C_3
//
//  Created by 佐藤亘 on 2018/04/19.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

# pragma mark - Public properties
@property NSString *name;
@property NSString *email;
@property NSString *phone;

# pragma mark - Public Methods
- (instancetype) initWithContact:(NSString *)name andEmail:(NSString *) email andPhone:(NSString *) phone;

@end
