//
//  Seevl.m
//  libseevl
//
//  Created by reflog on 7/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Seevl.h"
#import "JSONKit.h"


@implementation Seevl

+ (NSURLRequest*) requestForURLString:(NSString*)surl{
    NSURL *url = [NSURL URLWithString: surl];
    NSMutableURLRequest* req = [NSMutableURLRequest requestWithURL:url];
    [req addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [req addValue:SEEVL_API_KEY forHTTPHeaderField:@"X_APP_KEY"];
    [req addValue:SEEVL_API_ID forHTTPHeaderField:@"X_APP_ID"];
    return req;
}

+ (NSURLRequest*) searchResultsRequestForQuery:(NSString*)q {
    return [Seevl requestForURLString: [SEEVL_API_ENDPOINT stringByAppendingFormat:@"entity/?name=%@", [q stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];
}

+ (NSURLRequest*) getInfosRequestForSid:(NSString*)sid {
    return [Seevl requestForURLString: [SEEVL_API_ENDPOINT stringByAppendingFormat:@"entity/%@/infos", sid]];
}

+ (NSURLRequest*) getRelatedRequestForSid:(NSString*)sid {   
    return [Seevl requestForURLString: [SEEVL_API_ENDPOINT stringByAppendingFormat:@"entity/%@/related", sid]];
}


+ (NSURLRequest*) getRelatedRequestForSid1:(NSString*)sid1 sid2:(NSString*)sid2 {
    return [Seevl requestForURLString: [SEEVL_API_ENDPOINT stringByAppendingFormat:@"entity/%@/related/%@", sid1,sid2]];
}


+ (NSArray*) searchResultsFromData:(NSData*) data{
    id o = [data objectFromJSONData];
    NSArray* results = [o valueForKey:@"results"];
    if (results) {
        NSMutableArray* res = [NSMutableArray arrayWithCapacity:[results count]];
        for (id r in results) {
            [res addObject:[SeevlEntityInfo fromDictionary:r]];
        }
        return res;
    }
    return nil;
}

+ (NSDictionary*) parseInfos:(NSData*)data {
    id o = [data objectFromJSONData];
    NSMutableDictionary* ret = [NSMutableDictionary dictionary];
    for(NSString* key in [ [o keyEnumerator] allObjects]){
        [ret setValue:[SeevlEntityObject fromDictionary:[o valueForKey:key]] forKey:key];
    }
    return ret;
}

@end
