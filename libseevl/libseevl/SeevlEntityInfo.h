//
//  EntitySearchResult.h
//  
//
//  Created by reflog on 7/3/11.
//  Copyright 2011. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SeevlEntityInfo : NSObject {

    NSString *description;
    NSString *name;
    NSString *sid;
    NSString *uri;

}

+ (SeevlEntityInfo*) fromDictionary:(NSDictionary*)d;

@property (nonatomic, copy) NSString *description;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *sid;
@property (nonatomic, copy) NSString *uri;

@end
