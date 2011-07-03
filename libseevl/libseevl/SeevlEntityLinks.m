//
//  EntityLink.m
//  
//
//  Created by reflog on 7/3/11.
//  Copyright 2011. All rights reserved.
//

#import "SeevlEntityLinks.h"

@implementation SeevlEntityLinks

@synthesize homepage, musicbrainz, nytimes, wikipedia;

- (void)dealloc; {

    [homepage release];
    [musicbrainz release];
    [nytimes release];
    [wikipedia release];

    [super dealloc];

}


- (id)initWithHomepage:(NSArray*)anHomepage musicbrainz:(NSArray*)aMusicbrainz nytimes:(NSArray*)aNytimes wikipedia:(NSArray*)aWikipedia 
{
    if ((self = [super init])) {
        homepage = [anHomepage copy];
        musicbrainz = [aMusicbrainz copy];
        nytimes = [aNytimes copy];
        wikipedia = [aWikipedia copy];
    }
    return self;
}

+ (SeevlEntityLinks*) fromDictionary:(SeevlEntityLinks*)d {
    return [[[SeevlEntityLinks alloc] initWithHomepage:[d valueForKey:@"homepage"] 
                                           musicbrainz:[d valueForKey:@"musicbrainz"] 
                                               nytimes:[d valueForKey:@"nytimes"] 
                                             wikipedia:[d valueForKey:@"wikipedia"]]autorelease];    
}


@end
