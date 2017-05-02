//
//  AdditionQuestion.m
//  Maths
//
//  Created by Rushan on 2017-05-02.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion


-(instancetype)init{
    if(self = [super init]){
        _firstNumber = arc4random_uniform(100);
        _secondNumber = arc4random_uniform(100);
        
        
        _question = [NSString stringWithFormat:@"%ld + %ld = ?", _firstNumber, _secondNumber];
        _answer = _firstNumber + _secondNumber;
        
        NSLog(@"What is: %@", _question);
        
    }
    return self;
}

@end
