//
//  Seevl.h
//  libseevl
//
//  Created by reflog on 7/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SeevlEntityInfo.h"
#import "SeevlEntityObject.h"
//IMPORTANT: Replace the values below with your keys. These values came from the Seevl manual and may not work.

#define SEEVL_API_KEY @"65e7fbe154e8cee6c1704a9358dd8939"
#define SEEVL_API_ID @"1c55b80a"
#define SEEVL_API_ENDPOINT @"http://seevl.net/"

@interface Seevl : NSObject {
    
}

+ (NSURLRequest*) searchResultsRequestForQuery:(NSString*)q;
+ (NSURLRequest*) getInfosRequestForSid:(NSString*)sid ;
+ (NSURLRequest*) getRelatedRequestForSid:(NSString*)sid;
+ (NSURLRequest*) getRelatedRequestForSid1:(NSString*)sid1 sid2:(NSString*)sid2;

+ (NSArray*) searchResultsFromData:(NSData*)data;

+ (NSDictionary*) parseInfos:(NSData*)data;

@end
