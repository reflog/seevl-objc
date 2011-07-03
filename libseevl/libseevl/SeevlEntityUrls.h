//
//  Entity.h
//  
//
//  Created by reflog on 7/3/11.
//  Copyright 2011. All rights reserved.
//
#import <Foundation/Foundation.h>


@interface SeevlEntityUrls : NSObject {

    NSString *facts;
    NSString *infos;
    NSString *links;
    NSString *related;
    NSString *topics;
    NSString *uri;

}

@property (nonatomic, copy) NSString *facts;
@property (nonatomic, copy) NSString *infos;
@property (nonatomic, copy) NSString *links;
@property (nonatomic, copy) NSString *related;
@property (nonatomic, copy) NSString *topics;
@property (nonatomic, copy) NSString *uri;

+ (SeevlEntityUrls*) fromDictionary:(SeevlEntityUrls*)d;


@end
