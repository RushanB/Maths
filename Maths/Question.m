//
//  AdditionQuestion.m
//  Maths
//
//  Created by Rushan on 2017-05-02.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "Question.h"
#import "InputHandler.h"

@implementation Question


-(instancetype)init{
    if(self = [super init]){
        _rightValue = arc4random_uniform(90);
        
        _leftValue = arc4random_uniform(90);
        
        _startTime = [NSDate date];
        
    }
    return self;
}

-(NSInteger) answer{ //override getter
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime{
    NSTimeInterval answerTime = ((int)[_endTime timeIntervalSinceDate:_startTime]);

    return answerTime;
}

-(void)generateQuestion{
    //does nothing
}


@end
