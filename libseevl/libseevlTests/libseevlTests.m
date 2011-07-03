//
//  libseevlTests.m
//  libseevlTests
//
//  Created by reflog on 7/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "libseevlTests.h"
#import "Seevl.h"

@implementation libseevlTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    NSURLRequest* req = [Seevl searchResultsRequestForQuery:@"beatles"];
    STAssertNotNil(req, @"Testing request generation");
    NSURLResponse* resp = nil;
    NSError* err = nil;
    NSData* data = [NSURLConnection sendSynchronousRequest:req returningResponse:&resp error:&err];
    STAssertNotNil(data, @"Testing that we got data");
    NSArray* results = [Seevl searchResultsFromData:data];
    STAssertNotNil(results, @"Testing that we parsed data");
    NSLog(@"%@",results);
    SeevlEntityInfo* ei = [results objectAtIndex:0];
    STAssertNotNil(req, @"Testing request2 generation");
    req = [Seevl getInfosRequestForSid:ei.sid];
    data = [NSURLConnection sendSynchronousRequest:req returningResponse:&resp error:&err];
    STAssertNotNil(data, @"Testing that we got data2");
    NSDictionary* rd = [Seevl parseInfos:data];
    NSLog(@"%@",rd);
    STAssertNotNil(rd, @"Testing that we parsed data");
}

@end
