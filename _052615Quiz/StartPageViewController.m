//
//  StartPageViewController.m
//  _052615Quiz
//
//  Created by Xiaonan Wang on 5/26/15.
//  Copyright (c) 2015 Xiaonan Wang. All rights reserved.
//

#import "StartPageViewController.h"

@interface StartPageViewController ()

@end

@implementation StartPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"HIT");
    Quiz *quiz = [[Quiz alloc]init];
    Question *q2 = [[Question alloc]initQuestionWithDescription:@"How long did you sleep?" optionOne:@"less than 5 hours" optionTwo:@"5 to 6 hours" optionThree:@"7 to 8 hours" optionFour:@"more than 8 hours"];
    Question *q1 = [[Question alloc]initQuestionWithDescription:@"Did you have a good sleep last night?" optionOne:@"Yes, perfect" optionTwo:@"Good" optionThree:@"Not so good" optionFour:@"Totally not"];
    Question *q3 = [[Question alloc]initQuestionWithDescription:@"How much water have you drunk since this morning?" optionOne:@"none" optionTwo:@"less than 2 cups" optionThree:@"2 to 5 cups" optionFour:@"more than 5 cups"];
    [quiz addQuestion:q1];
    [quiz addQuestion:q2];
    [quiz addQuestion:q3];
    
    
    quiz.currentQuestionNum = 0;
    ViewController *desViewController = [segue destinationViewController];
    desViewController.quiz = quiz;
}

@end
