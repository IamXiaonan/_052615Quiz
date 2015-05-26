//
//  Question.m
//  _052615Quiz
//
//  Created by Xiaonan Wang on 5/26/15.
//  Copyright (c) 2015 Xiaonan Wang. All rights reserved.
//

#import "Question.h"

@implementation Question

-(id)initQuestionWithDescription:(NSString *)questionDescription optionOne:(NSString *)optionOne optionTwo:(NSString *)optionTwo optionThree:(NSString *)optionThree optionFour:(NSString *)optionFour{
    
    self = [super init];
    
    if (self) {
        // initialize instance variables here
        _questionDescription = questionDescription;
        _optionOne = optionOne;
        _optionTwo = optionTwo;
        _optionThree = optionThree;
        _optionFour = optionFour;
        _selectedOptionNum = 0;
    }
    
    return self;
}

@end
