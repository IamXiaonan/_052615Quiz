//
//  Question.h
//  _052615Quiz
//
//  Created by Xiaonan Wang on 5/26/15.
//  Copyright (c) 2015 Xiaonan Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSString *questionDescription;
@property (nonatomic) NSString *optionOne;
@property (nonatomic) NSString *optionTwo;
@property (nonatomic) NSString *optionThree;
@property (nonatomic) NSString *optionFour;
@property (nonatomic) NSInteger selectedOptionNum;

-(id)initQuestionWithDescription:(NSString *)questionDescription optionOne:(NSString *)optionOne optionTwo:(NSString *)optionTwo optionThree:(NSString *)optionThree optionFour:(NSString *)optionFour;

@end
