//
//  EntityLink.h
//  
//
//  Created by reflog on 7/3/11.
//  Copyright 2011. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface SeevlEntityLinks : NSObject {

    NSArray *homepage;
    NSArray *musicbrainz;
    NSArray *nytimes;
    NSArray *wikipedia;

}

@property (nonatomic, copy) NSArray *homepage;
@property (nonatomic, copy) NSArray *musicbrainz;
@property (nonatomic, copy) NSArray *nytimes;
@property (nonatomic, copy) NSArray *wikipedia;
+ (SeevlEntityLinks*) fromDictionary:(SeevlEntityLinks*)d;
@end
