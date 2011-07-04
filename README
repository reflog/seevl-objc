
This is a simple Objective-C wrapper for the APIs for Seevl project. You can read more about the actual APIs at ###[Seevl Developers](http://developers.seevl.net/)
The JSON parsing is performed using JSONKit

Here's a short example of how you can use this library:

Create URL Request for search-by-name http://developers.seevl.net/wiki
    NSURLRequest* req = [Seevl searchResultsRequestForQuery:@"beatles"];
    NSURLResponse* resp = nil;
    NSError* err = nil;
Perform fetch
    NSData* data = [NSURLConnection sendSynchronousRequest:req returningResponse:&resp error:&err];
Parse results
    NSArray* results = [Seevl searchResultsFromData:data];
Pick first result
    SeevlEntityInfo* ei = [results objectAtIndex:0];
Create Infos request http://developers.seevl.net/wiki/infos
    req = [Seevl getInfosRequestForSid:ei.sid];
    data = [NSURLConnection sendSynchronousRequest:req returningResponse:&resp error:&err];
Parse infos result
    NSDictionary* infos = [Seevl parseInfos:data];
Create related request http://developers.seevl.net/wiki/related
    req = [Seevl getRelatedRequestForSid:ei.sid];
    data = [NSURLConnection sendSynchronousRequest:req returningResponse:&resp error:&err];
Parse the list of relationships
    results = [Seevl parseRelatedFromData:data];
Explain one relationship http://developers.seevl.net/wiki/explain
    req = [Seevl getRelatedRequestForSid1:ei.sid sid2:[[results objectAtIndex:0] sid]];
    data = [NSURLConnection sendSynchronousRequest:req returningResponse:&resp error:&err];
    SeevlEntityRelationshipDetail* det = [Seevl parseRelionshipDetailFromData:data];
    NSLog(@"%@",det);
    
