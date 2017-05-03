//
//  QuestionFactory.m
//  Maths
//
//  Created by Rushan on 2017-05-03.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questSubClass = @[@"AdditionQuestion", @"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
    }
    return self;
}

- (Question *)generateRandomQuestion{
    
    NSString *className = [_questSubClass objectAtIndex:arc4random_uniform(4)];
    Question *qType = [[NSClassFromString(className)alloc] init];
    
    return qType;
}


@end
