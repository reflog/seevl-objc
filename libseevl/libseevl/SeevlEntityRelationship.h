//
//  SeevlEntityRelated.h
//  libseevl
//
//  Created by reflog on 7/4/11.
//

#import <Foundation/Foundation.h>


@interface SeevlEntityRelationship : NSObject {
    
}
@property(nonatomic,copy) NSString* property;
@property(nonatomic,copy) NSString* value;
@property(nonatomic,copy) NSString* uri;
@property(nonatomic,copy) NSString* sid;

+ (SeevlEntityRelationship*) fromDictionary:(NSDictionary*)d;


@end
