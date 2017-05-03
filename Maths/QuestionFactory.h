//
//  QuestionFactory.h
//  Maths
//
//  Created by Rushan on 2017-05-03.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

-(Question *)generateRandomQuestion;

@property NSArray *questSubClass;

@end
