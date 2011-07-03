//
//  Entity.m
//  
//
//  Created by reflog on 7/3/11.
//  Copyright 2011. All rights reserved.
//

#import "SeevlEntityUrls.h"

@implementation SeevlEntityUrls
@synthesize facts, infos, links, related, topics, uri;


- (void)dealloc; {

    [facts release];
    [infos release];
    [links release];
    [related release];
    [topics release];
    [uri release];

    [super dealloc];

}

- (id)initWithFacts:(NSString*)aFacts infos:(NSString*)anInfos links:(NSString*)aLinks related:(NSString*)aRelated topics:(NSString*)aTopics uri:(NSString*)anUri 
{
    if ((self = [super init])) {
        facts = [aFacts copy];
        infos = [anInfos copy];
        links = [aLinks copy];
        related = [aRelated copy];
        topics = [aTopics copy];
        uri = [anUri copy];
    }
    return self;
}

+ (SeevlEntityUrls*) fromDictionary:(SeevlEntityUrls*)d {
    return                 [[[SeevlEntityUrls alloc] initWithFacts:[d valueForKey:@"facts"]
                                                             infos:[d valueForKey:@"infos"]
                                                             links:[d valueForKey:@"links"]
                                                           related:[d valueForKey:@"related"]
                                                            topics:[d valueForKey:@"topics"]
                                                               uri:[d valueForKey:@"uri"] ]autorelease];
    
}


@end
