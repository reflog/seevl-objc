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

- (id)initWithDescription:(NSString*)aDescription name:(NSString*)aName sid:(NSString*)aSid uri:(NSString*)anUri 
{
    if ((self = [super init])) {
        description = [aDescription copy];
        name = [aName copy];
        sid = [aSid copy];
        uri = [anUri copy];
    }
    return self;
}

+ (SeevlEntityInfo*) fromDictionary:(NSDictionary*)d {
    SeevlEntityInfo* ret = [[[SeevlEntityInfo alloc] initWithDescription: [d valueForKey:@"description"]
                                                                    name: [d valueForKey:@"value"]
                                                                     sid: [d valueForKey:@"sid"]
                                                                     uri: [d valueForKey:@"uri"]] autorelease];
    return ret;
}


- (void)dealloc; {
    [description release], description = nil;
    [name release], name = nil;
    [sid release], sid = nil;
    [uri release], uri = nil;

    [super dealloc];

}


@end
