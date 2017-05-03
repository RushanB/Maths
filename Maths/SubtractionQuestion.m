//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Rushan on 2017-05-03.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion{
    super.question = [NSString stringWithFormat:@"What is %li - %li = ?", super.rightValue, super.leftValue];
    super.answer = super.rightValue + super.leftValue;

}

@end
