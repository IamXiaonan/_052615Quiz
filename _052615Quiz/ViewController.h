//
//  ViewController.h
//  _052615Quiz
//
//  Created by Xiaonan Wang on 5/26/15.
//  Copyright (c) 2015 Xiaonan Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Quiz.h"

@interface ViewController : UIViewController


@property (nonatomic) Quiz *quiz;
@property (nonatomic) Question *question;

@property (weak, nonatomic) IBOutlet UIProgressView *processBar;
@property (weak, nonatomic) IBOutlet UILabel *questionDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIButton *optionOneButton;
@property (weak, nonatomic) IBOutlet UIButton *optionTwoButton;
@property (weak, nonatomic) IBOutlet UIButton *optionThreeButton;
@property (weak, nonatomic) IBOutlet UIButton *optionFourButton;

- (IBAction)optionOneSelected:(id)sender;
- (IBAction)optionTwoSelected:(id)sender;
- (IBAction)optionThreeSelected:(id)sender;
- (IBAction)optionFourSelected:(id)sender;



@end

