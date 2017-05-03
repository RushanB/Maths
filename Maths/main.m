//
//  main.m
//  Maths
//
//  Created by Rushan on 2017-05-02.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "InputHandler.h"
#import "Question.h"
#import "ScoreKeeper.h"
#import "DivisionQuestion.h"
#import "MultiplicationQuestion.h"
#import "SubtractionQuestion.h"
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        NSLog(@"MATHS!\n\n\n");
        ScoreKeeper *newScore = [[ScoreKeeper alloc] init];  //scorekeeper instance
        QuestionFactory *newFactory = [[QuestionFactory alloc] init];
        QuestionManager *newManager = [[QuestionManager alloc] initArray];
        Question *newQuestion = [[Question alloc] init];
        
        NSInteger correctAnswer;
        
        
        while(gameOn){
            
            newQuestion = [newFactory generateRandomQuestion];
            NSLog(@"%@", newQuestion.question);
            
            NSString *userInput = [InputHandler getInput];
            
            [newManager addQuestion:newQuestion];
        
            
            if([userInput isEqualToString:@"quit\n"]){
                gameOn = NO;
                break;
            }else{
                correctAnswer = [userInput intValue];
            }
            if(newQuestion.answer == correctAnswer){
                newScore.right +=1;
                NSLog(@"Right!");
                [newScore score];
                NSLog(@"%@", [newScore score]);
            }else{
                newScore.wrong +=1;
                NSLog(@"Wrong!");
                [newScore score];
                NSLog(@"%@", [newScore score]);
            }
            
            //[newManager.questions addObject:question];
            //NSLog(@"%@", [newScore score]);
            NSLog(@"%@", [newManager timeOutput]);
        }
        
        
    }
    return 0;

}

