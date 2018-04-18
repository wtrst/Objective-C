//
//  main.m
//  Objective-C_1
//
//  Created by 佐藤亘 on 2018/04/17.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>

void convertToUpper(NSString *);
void convertToLower(NSString *);
void convertToNumber(NSString *);
void canadianizeString(NSString *);
void answerToInput(NSString *);
void convertSpaces(NSString *);
void countLength(NSString *);


void convertToUpper(NSString *input){
    NSString *upper = [input uppercaseString];
    NSLog(@"Upper Case: %@", upper);
}

void convertToLower(NSString *input){
    NSString *lower = [input lowercaseString];
    NSLog(@"Lower Case: %@", lower);
}

void convertToNumber(NSString *input){
    unichar c = [input characterAtIndex:0];
    NSCharacterSet *numericSet = [NSCharacterSet decimalDigitCharacterSet];
    if ([numericSet characterIsMember:c]) {
        NSInteger intNum = [input integerValue];
        NSLog(@"Lower Case: %ld", intNum);
    }else{
        NSLog(@"It was NOT number!!");
    }
}

void canadianizeString(NSString *input){
    NSString *second = @", eh?";
    NSString *first = [input stringByReplacingOccurrencesOfString: @"\n" withString: @""];
    NSString *canadianize = [NSString stringWithFormat:@"%@%@",first,second];
    NSLog(@"Canadianize: %@", canadianize);
}

void answerToInput(NSString *input){
    NSInteger length = [input length];
    NSString *end = [input substringFromIndex:(length-2)];
    
    if ([end isEqualToString:@"?\n"]) {
        NSLog(@"I don't know.");
    }
    if ([end isEqualToString:@"!\n"]) {
        NSLog(@"Whoa, calm down!");
    }
}

void convertSpace(NSString *input){
    NSString *string = [input stringByReplacingOccurrencesOfString: @" " withString: @"-"];
    NSLog(@"Convert Spaces: %@", string);
}

void countLength(NSString *input){
    NSInteger length = [input length];
    NSLog(@"Length: %ld", length - 1);
}

int main(int argc, const char * argv[]) {
    // 255 unit long array of characters
    char inputChars[255];
    int num;
    
    printf("Input a string: ");
    // limit input to max 255 characters
    fgets(inputChars, 255, stdin);
    
    // print as a c string
    printf("Your string is %s\n", inputChars);
    
    // convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    // print NSString object
    NSLog(@"Input was: %@", inputString);
    
    printf("-------- MENU --------\n");
    printf("1) Uppercase\n");
    printf("2) Lowercase\n");
    printf("3) Numberize\n");
    printf("4) Canadianize\n");
    printf("5) Respond\n");
    printf("6) De-Space-It\n");
    printf("7) Length\n");
    printf("8) Exit\n\n");
    
    printf("Choose Number: ");
    scanf("%d", &num);
    
    switch (num) {
        case 1:
            convertToUpper(inputString);
            break;
        case 2:
            convertToLower(inputString);
            break;
        case 3:
            convertToNumber(inputString);
            break;
        case 4:
            canadianizeString(inputString);
            break;
        case 5:
            answerToInput(inputString);
            break;
        case 6:
            convertSpace(inputString);
            break;
        case 7:
            countLength(inputString);
            break;
        default:
            break;
    }
}
