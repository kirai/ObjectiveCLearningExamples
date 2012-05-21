#import <Foundation/Foundation.h>

@interface requestManager : NSObject 
- (void) sendRequest;
@end

@implementation requestManager

- (void) sendRequest {
  NSURL *url = [NSURL URLWithString:@"http://www.kirainet.com"];
  NSURLRequest * urlRequest = [NSURLRequest requestWithURL:url];
  NSURLResponse * response = nil;
  NSError * error = nil;
  NSData * data = [NSURLConnection sendSynchronousRequest:urlRequest returningResponse:&response error:&error];
  NSLog(@"The html is %@", data);
}

@end

int main(void) {
  
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  requestManager *request = [[requestManager alloc] init];
  [request sendRequest];

}
