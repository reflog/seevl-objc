//
//  EntityLink.m
//  
//
//  Created by reflog on 7/3/11.
//  Copyright 2011. All rights reserved.
//

#import "EntityLink"

@implementation EntityLinks


- (void)dealloc; {

    [homepage release];
    [musicbrainz release];
    [nytimes release];
    [wikipedia release];

    [super dealloc];

}


@end
