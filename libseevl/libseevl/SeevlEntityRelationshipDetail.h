//
//  SeevlEntityRelationshipDetail.h
//  libseevl
//
//  Created by reflog on 7/4/11.
//

#import <Foundation/Foundation.h>


@interface SeevlEntityRelationshipDetail : NSObject {
    
}
@property(nonatomic, copy) NSArray* direct_in;
@property(nonatomic, copy) NSArray* direct_out;
@property(nonatomic, copy) NSArray* indirect_out;

+ (SeevlEntityRelationshipDetail*) fromDictionary:(NSDictionary*)d;

@end
