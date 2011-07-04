//
//  SeevlEntityRelationshipDetail.m
//  libseevl
//
//  Created by reflog on 7/4/11.
//

#import "SeevlEntityRelationshipDetail.h"
#import "SeevlEntityInfo.h"
#import "SeevlEntityRelationship.h"

@implementation SeevlEntityRelationshipDetail
@synthesize direct_in, direct_out, indirect_out;

- (id)initWithDirect_in:(NSArray*)aDirect_in direct_out:(NSArray*)aDirect_out indirect_out:(NSArray*)anIndirect_out 
{
    if ((self = [super init])) {
        direct_in = [aDirect_in copy];
        direct_out = [aDirect_out copy];
        indirect_out = [anIndirect_out copy];
    }
    return self;
}
- (NSString*) description {
    return [NSString stringWithFormat:@"<SeevlEntityRelationshipDetail> direct_in %@ direct_out %@ indirect_out %@", self.direct_in, self.direct_out, self.indirect_out,nil];
}

+ (SeevlEntityRelationshipDetail*) fromDictionary:(NSDictionary*)d {
    NSArray* din = [d valueForKey:@"direct_in"];
    NSArray* dout = [d valueForKey:@"direct_out"];
    NSMutableArray *retarr = [NSMutableArray array];
    for(NSDictionary* retd in [d valueForKey:@"indirect_out"]){
        [retarr addObject:[SeevlEntityRelationship fromDictionary:retd]];
    }
    return [[[SeevlEntityRelationshipDetail alloc] initWithDirect_in:din direct_out:dout indirect_out:retarr]autorelease];
}


- (void) dealloc {
    
    [direct_in release];
    [direct_out release];
    [indirect_out release];
    [super dealloc];
}

@end
