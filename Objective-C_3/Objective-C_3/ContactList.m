//
//  ContactList.m
//  Objective-C_3
//
//  Created by 佐藤亘 on 2018/04/20.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import "ContactList.h"
#import "InputCollector.h"

@implementation ContactList

# pragma mark - Constructor
- (instancetype)initWithContactArray:(NSMutableArray *)contactArray{
    self = [super init];
    if(self) {
        self.contactArray = contactArray;
    }
    return self;
}

# pragma mark - Public Methods
- (void)addContact:(Contact *)newContact{
    [self.contactArray addObject:newContact];
}

- (void)listContact{
    for (Contact *tempContact in self.contactArray) {
        int index = 0;
        NSLog(@"%d %@(Email: %@, Phone: %@)",index ,tempContact.name, tempContact.email, tempContact.phone);
        index++;
    }
}

@end
