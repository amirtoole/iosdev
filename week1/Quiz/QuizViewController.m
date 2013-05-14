//
//  QuizViewController.m
//  Quiz
//
//  Created by iuser on 13-05-06.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import "QuizViewController.h"

@implementation QuizViewController
//first method that will be called -- comes from Supporting Files/main.m
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//java equivalent: Object initwithDBName(nibNameOrNil, nibBundleOrNil)
{
    //call the init in super class
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    if(self) {
        //create our arrays
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //add questions and answers to the arrays
        [questions addObject:@"What is 7+7=?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpellier"];
        
        [questions addObject:@"From what is cognac made from?"];
        [answers addObject:@"Grapes"];
    }
    
    currentQuestionIndex = -1;
      
    return self;
}

-(IBAction)showQuestion:(id)sender
{
    //step to the next question
    currentQuestionIndex++;
    if(currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }

    //get the string for the index of the question
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"displaying question %@", question);

    //display the string in the question field
    [questionField setText:question];
    //clear the answer field
    [answerField setText:@"???"];
}

-(IBAction)showAnswer:(id)sender
{
   
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    [answerField setText:answer];
    
}


@end
