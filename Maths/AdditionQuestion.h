//
//  AdditionQuestion.h
//  Maths
//
//  Created by Rushan on 2017-05-02.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic)NSString *question;

@property (nonatomic)NSInteger  answer;

@property (nonatomic, assign) NSInteger firstNumber;
@property (nonatomic, assign) NSInteger secondNumber;

-(instancetype)init; 


@end
