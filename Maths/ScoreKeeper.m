//
//  ScoreKeeper.m
//  Maths
//
//  Created by Rushan on 2017-05-02.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(instancetype)init{
    self = [super init];
    if(self){
        _right = 0;
        _wrong = 0;
    }
    return self;
}

-(NSString *)score{
    return [NSString stringWithFormat:@"score: %ld right, %ld wrong ----%d%%",(long)self.right, (long)self.wrong, (int)(self.right*100/ (self.right + self.wrong))];
}

@end
