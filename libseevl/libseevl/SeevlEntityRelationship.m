//
//  SeevlEntityRelated.m
//  libseevl
//
//  Created by reflog on 7/4/11.
//

#import "SeevlEntityRelationship.h"


@implementation SeevlEntityRelationship

@synthesize property, value, uri, sid;


- (id)initWithProperty:(NSString*)aProperty value:(NSString*)aValue uri:(NSString*)anUri sid:(NSString*)aSid 
{
    if ((self = [super init])) {
        property = [aProperty copy];
        value = [aValue copy];
        uri = [anUri copy];
        sid = [aSid copy];
    }
    return self;
}

+ (SeevlEntityRelationship*) fromDictionary:(NSDictionary*)d {
    return [[[SeevlEntityRelationship alloc] initWithProperty:[d valueForKey:@"property"]
                                                        value:[d valueForKey:@"value"]
                                                          uri:[d valueForKey:@"uri"]
                                                          sid:[d valueForKey:@"sid"]] autorelease];
}

- (NSString*) description {
    return [NSString stringWithFormat:@"<SeevlEntityRelationship> property %@ sid %@ uri %@ value %@", self.property,self.sid,self.uri,self.value,nil];
}

- (void) dealloc {
    
    [property release];
    [value release];
    [uri release];
    [sid release];
    [super dealloc];
}
@end
