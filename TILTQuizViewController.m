//
//  TILTQuizViewController.m
//  TiltQuiz
//
//  Created by Ossi Tiltti on 11/09/14.
//  Copyright (c) 2014 Tiltti. All rights reserved.
//

#import "TILTQuizViewController.h"

@interface TILTQuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;


@property (nonatomic, weak) IBOutlet UILabel *questionLabel;

@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation TILTQuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self)
    {
        self.questions = @[@"Kumpi kissa on kilpikonna?",
                           @"Mika on Sofian toinen nimi?",
                           @"Mika on Lohjan paras kaupunginosa?"];
        
        self.answers = @[@"Veera",
                         @"Elviira",
                         @"Virkkala"];
    }
    return self;
}

- (IBAction)showQuestions:(id)sender
{
    // next question and check if last
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [self.questions count])
        self.currentQuestionIndex = 0;
    
    // get index
    NSString *question = self.questions[self.currentQuestionIndex];
    
    self.questionLabel.text = question;
    
    self.answerLabel.text = @"???";
    
}
- (IBAction)showAnswer:(id)sender
{
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
}

@end
