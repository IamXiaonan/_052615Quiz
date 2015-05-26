//
//  Quiz.h
//  _052615Quiz
//
//  Created by Xiaonan Wang on 5/26/15.
//  Copyright (c) 2015 Xiaonan Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface Quiz : NSObject

@property (nonatomic) NSMutableArray *questions;
@property (nonatomic) NSInteger currentQuestionNum;


-(id)init;
-(void)addQuestion:(Question *)question;

@end
