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

	int enc_arr[] = {
		NSUTF8StringEncoding,			// UTF-8
		NSShiftJISStringEncoding,		// Shift_JIS
		NSJapaneseEUCStringEncoding,	// EUC-JP
		NSISO2022JPStringEncoding,		// JIS
		NSUnicodeStringEncoding,		// Unicode
		NSASCIIStringEncoding			// ASCII
	};

	NSString *data_str = nil;
	int max = sizeof(enc_arr) / sizeof(enc_arr[0]);
	for (int i=0; i<max; i++) {
		data_str = [
			[NSString alloc]
			initWithData : data
			encoding : enc_arr[i]
		];
		if (data_str!=nil) {
			break;
		}
	}

  NSLog(@"The html is %@", data_str);

}

@end

int main(void) {
  
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  requestManager *request = [[requestManager alloc] init];
  [request sendRequest];

}
