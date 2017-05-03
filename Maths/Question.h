//
//  AdditionQuestion.h
//  Maths
//
//  Created by Rushan on 2017-05-02.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong)NSString *question;
@property (nonatomic) NSInteger  answer;


@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

@property (nonatomic, assign) NSInteger rightValue;
@property (nonatomic, assign) NSInteger leftValue;

-(NSInteger)answer;

-(NSTimeInterval)answerTime;

-(void)generateQuestion;

@end
