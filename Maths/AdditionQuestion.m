//
//  AdditionQuestion.m
//  Maths
//
//  Created by Rushan on 2017-05-03.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion


- (instancetype) init{
        self = [super init];
        if (self) {
            [self generateQuestion];
        }
        return self;
}

- (void) generateQuestion{
    super.question = [NSString stringWithFormat:@"What is %li + %li = ?", super.rightValue, super.leftValue];
    super.answer = super.rightValue + super.leftValue;

}



@end
