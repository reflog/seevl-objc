//
//  EntityObject.h
//  libseevl
//
//  Created by reflog on 7/3/11.

#import <Foundation/Foundation.h>

@interface SeevlEntityObject : NSObject {
    NSString *provenance;
    NSString *value;
}

@property (nonatomic, copy) NSString *provenance;
@property (nonatomic, copy) NSString *value;
+ (SeevlEntityObject*) fromDictionary:(NSDictionary*)d ;

@end
