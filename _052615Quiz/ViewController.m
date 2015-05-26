//
//  ViewController.m
//  _052615Quiz
//
//  Created by Xiaonan Wang on 5/26/15.
//  Copyright (c) 2015 Xiaonan Wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _question = [self.quiz.questions objectAtIndex:_quiz.currentQuestionNum];
    [_questionDescriptionLabel setText:_question.questionDescription];
    [_optionOneButton setTitle:_question.optionOne forState:UIControlStateNormal];
    [_optionTwoButton setTitle:_question.optionTwo forState:UIControlStateNormal];
    [_optionThreeButton setTitle:_question.optionThree forState:UIControlStateNormal];
    [_optionFourButton setTitle:_question.optionThree forState:UIControlStateNormal];
    _processBar.progress = (float)(_quiz.currentQuestionNum+1)/(float)[_quiz.questions count];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)optionOneSelected:(id)sender {
    _question.selectedOptionNum = 1;
    [_quiz.questions replaceObjectAtIndex:_quiz.currentQuestionNum withObject:_question];
    _quiz.currentQuestionNum++;
    
    
    if (_quiz.currentQuestionNum == [_quiz.questions count]) {
        [self performSegueWithIdentifier:@"quizEnd" sender:self];
    }else{
        _question = [self.quiz.questions objectAtIndex:_quiz.currentQuestionNum];
        [_questionDescriptionLabel setText:_question.questionDescription];
        [_optionOneButton setTitle:_question.optionOne forState:UIControlStateNormal];
        [_optionTwoButton setTitle:_question.optionTwo forState:UIControlStateNormal];
        [_optionThreeButton setTitle:_question.optionThree forState:UIControlStateNormal];
        [_optionFourButton setTitle:_question.optionThree forState:UIControlStateNormal];
        _processBar.progress = (float)(_quiz.currentQuestionNum+1)/(float)[_quiz.questions count];
    }
    
}

- (IBAction)optionTwoSelected:(id)sender {
    _question.selectedOptionNum = 2;
    [_quiz.questions replaceObjectAtIndex:_quiz.currentQuestionNum withObject:_question];
    _quiz.currentQuestionNum++;
    
    
    if (_quiz.currentQuestionNum == [_quiz.questions count]) {
        [self performSegueWithIdentifier:@"quizEnd" sender:self];
    }else{
        _question = [self.quiz.questions objectAtIndex:_quiz.currentQuestionNum];
        [_questionDescriptionLabel setText:_question.questionDescription];
        [_optionOneButton setTitle:_question.optionOne forState:UIControlStateNormal];
        [_optionTwoButton setTitle:_question.optionTwo forState:UIControlStateNormal];
        [_optionThreeButton setTitle:_question.optionThree forState:UIControlStateNormal];
        [_optionFourButton setTitle:_question.optionThree forState:UIControlStateNormal];
        _processBar.progress = (float)(_quiz.currentQuestionNum+1)/(float)[_quiz.questions count];
    }
}

- (IBAction)optionThreeSelected:(id)sender {
    _question.selectedOptionNum = 3;
    [_quiz.questions replaceObjectAtIndex:_quiz.currentQuestionNum withObject:_question];
    _quiz.currentQuestionNum++;
    
    
    if (_quiz.currentQuestionNum == [_quiz.questions count]) {
        [self performSegueWithIdentifier:@"quizEnd" sender:self];
    }else{
        _question = [self.quiz.questions objectAtIndex:_quiz.currentQuestionNum];
        [_questionDescriptionLabel setText:_question.questionDescription];
        [_optionOneButton setTitle:_question.optionOne forState:UIControlStateNormal];
        [_optionTwoButton setTitle:_question.optionTwo forState:UIControlStateNormal];
        [_optionThreeButton setTitle:_question.optionThree forState:UIControlStateNormal];
        [_optionFourButton setTitle:_question.optionThree forState:UIControlStateNormal];
        _processBar.progress = (float)(_quiz.currentQuestionNum+1)/(float)[_quiz.questions count];
        NSLog(@"%f",_processBar.progress);
    }
}

- (IBAction)optionFourSelected:(id)sender {
    _question.selectedOptionNum = 4;
    [_quiz.questions replaceObjectAtIndex:_quiz.currentQuestionNum withObject:_question];
    _quiz.currentQuestionNum++;
    
    
    if (_quiz.currentQuestionNum == [_quiz.questions count]) {
        [self performSegueWithIdentifier:@"quizEnd" sender:self];
    }else{
        _question = [self.quiz.questions objectAtIndex:_quiz.currentQuestionNum];
        [_questionDescriptionLabel setText:_question.questionDescription];
        [_optionOneButton setTitle:_question.optionOne forState:UIControlStateNormal];
        [_optionTwoButton setTitle:_question.optionTwo forState:UIControlStateNormal];
        [_optionThreeButton setTitle:_question.optionThree forState:UIControlStateNormal];
        [_optionFourButton setTitle:_question.optionThree forState:UIControlStateNormal];
        _processBar.progress = (float)(_quiz.currentQuestionNum+1)/(float)[_quiz.questions count];
    }
}
@end
