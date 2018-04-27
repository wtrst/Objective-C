//
//  main.m
//  Objective-C_3
//
//  Created by 佐藤亘 on 2018/04/19.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *result = @"";
        ContactList *contactList = [[ContactList alloc] init];
        
        while (![result isEqualToString:@"quit"]) {
            [InputCollector printToPrompt:@"What would you like to do next?"];
            [InputCollector printToPrompt:@"new - Create a new contact"];
            [InputCollector printToPrompt:@"list - List all contacts"];
            [InputCollector printToPrompt:@"quit - Exit Application"];
            result = [InputCollector inputForPrompt:@"[Type here]"];
            
            if ([result isEqualToString:@"new"]) {
                NSString *name = [InputCollector inputForPrompt:@"[Name]"];
                NSString *email = [InputCollector inputForPrompt:@"[E-mail]"];
                NSString *phone = [InputCollector inputForPrompt:@"[Phone]"];
                
                Contact *contact = [[Contact alloc] init];
                Contact *c = [contact initWithContact:name andEmail:email andPhone:phone];
                [contactList addContact:c];
            }
            if ([result isEqualToString:@"list"]) {
                [contactList listContact];
            }
        }
        
    }
    return 0;
}

