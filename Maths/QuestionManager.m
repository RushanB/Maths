//
//  QuestionManager.m
//  Maths
//
//  Created by Rushan on 2017-05-03.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)initArray{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}

-(void) addQuestion:(Question *)question{
    [_questions addObject:question];
}



-(NSString *)timeOutput{
    NSTimeInterval totalT = 0;
    NSTimeInterval averageT = 0;
    float counter = 1;
    for (Question *question in _questions){
        totalT += [question answerTime];
        averageT = totalT/ counter;
        counter ++;
    }
    return [NSString stringWithFormat:@"total time %0.2fs, average time: %0.2fs",totalT,averageT];
}

@end
