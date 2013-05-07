//
//  QuizViewController.h
//  Quiz
//
//  Created by iuser on 13-05-06.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    //model objects
    NSMutableArray *questions;
    NSMutableArray *answers;

    //view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

//buttons
-(IBAction)showQuestion:(id)sender;
-(IBAction)showAnswer:(id)sender;

@end
