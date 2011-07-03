//
//  EntityObject.m
//  libseevl
//
//  Created by reflog on 7/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SeevlEntityObject.h"

@implementation SeevlEntityObject
@synthesize provenance, value;

- (id)initWithProvenance:(NSString*)aProvenance value:(NSString*)aValue 
{
    if ((self = [super init])) {
        provenance = [aProvenance copy];
        value = [aValue copy];
    }
    return self;
}

+ (SeevlEntityObject*) fromDictionary:(NSDictionary*)d {
    SeevlEntityObject* ret = [[[SeevlEntityObject alloc] initWithProvenance: [d valueForKey:@"provenance"]
                                                                    value: [d valueForKey:@"value"]] autorelease];
    return ret;
}

- (NSString*) description {
    return [NSString stringWithFormat:@"Provenance: %@\nValue: %@", provenance, value, nil];
}

- (void)dealloc; {
    
    [provenance release];
    [value release];
    
    [super dealloc];
    
}


@end
