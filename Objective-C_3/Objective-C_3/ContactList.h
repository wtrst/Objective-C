//
//  ContactList.h
//  Objective-C_3
//
//  Created by 佐藤亘 on 2018/04/20.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

# pragma mark - Public properties
@property NSMutableArray *contactArray;

# pragma mark - Public Methods
- (instancetype) initWithContactArray:(NSMutableArray *)contactArray;
- (void) addContact:(Contact *)newContact;
- (void) listContact;

@end
