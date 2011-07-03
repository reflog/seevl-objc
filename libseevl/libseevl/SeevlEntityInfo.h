//
//  EntitySearchResult.h
//  
//
//  Created by reflog on 7/3/11.
//  Copyright 2011. All rights reserved.
//


@interface SeevlEntityInfo : NSObject {

    NSString *description;
    NSString *name;
    NSString *sid;
    NSString *uri;

}

@property (nonatomic, copy) NSString *description;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *sid;
@property (nonatomic, copy) NSString *uri;

@end
