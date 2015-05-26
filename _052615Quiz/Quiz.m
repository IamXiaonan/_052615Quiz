//
//  Quiz.m
//  _052615Quiz
//
//  Created by Xiaonan Wang on 5/26/15.
//  Copyright (c) 2015 Xiaonan Wang. All rights reserved.
//

#import "Quiz.h"

@implementation Quiz

-(id)init{
    self = [super init];
    if(self) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addQuestion:(Question *)question{
    [self.questions addObject:question];
}

@end
