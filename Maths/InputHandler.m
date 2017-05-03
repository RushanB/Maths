//
//  InputHandler.m
//  Maths
//
//  Created by Rushan on 2017-05-02.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *) getInput {
    char userChar[255];
    
    fgets(userChar, 255, stdin);
    
    return [[NSString stringWithCString:userChar encoding:NSUTF8StringEncoding]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}


@end
