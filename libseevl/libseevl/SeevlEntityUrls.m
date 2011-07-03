//
//  Entity.m
//  
//
//  Created by reflog on 7/3/11.
//  Copyright 2011. All rights reserved.
//

#import "Entity"

@implementation Entity


- (void)dealloc; {

    [facts release];
    [infos release];
    [links release];
    [related release];
    [topics release];
    [uri release];

    [super dealloc];

}


@end
