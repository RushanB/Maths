//
//  main.m
//  Maths
//
//  Created by Rushan on 2017-05-02.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        ScoreKeeper *newScore = [[ScoreKeeper alloc] init];  //scorekeeper instance
            
        while(gameOn){
            
            AdditionQuestion *question = [[AdditionQuestion alloc] init];
            
            InputHandler *input = [[InputHandler alloc] init];
            
            [input getInput];
            
            
            
            if([input.response isEqualToString:@"quit\n"]){
                gameOn = NO;
                break;
            }if(question.answer == input.response.integerValue && ![input.response isEqual:@"quit"]){
                newScore.right +=1;
                NSLog(@"Right!");
                [newScore score];
            }else{
                newScore.wrong +=1;
                NSLog(@"Wrong!");
                [newScore score];
            }
            
        }
        
        
    }
    return 0;
}
