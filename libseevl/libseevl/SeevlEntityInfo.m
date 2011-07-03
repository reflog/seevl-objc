//
//  EntitySearchResult.m
//  
//
//  Created by reflog on 7/3/11.
//  Copyright 2011. All rights reserved.
//

#import "SeevlEntityInfo.h"

@implementation SeevlEntityInfo

@synthesize description = description;
@synthesize name = name;
@synthesize sid = sid;
@synthesize uri = uri;

- (void)dealloc; {
    [description release], description = nil;
    [name release], name = nil;
    [sid release], sid = nil;
    [uri release], uri = nil;

    [super dealloc];

}


@end
