//
//  InputHandler.m
//  Maths
//
//  Created by Rushan on 2017-05-02.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(void) getInput {
    char userChar[1000];
    
    fgets(userChar, 1000, stdin);
    
    _response = [NSString stringWithCString:userChar encoding:NSUTF8StringEncoding];
    
    [_response stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}


@end
