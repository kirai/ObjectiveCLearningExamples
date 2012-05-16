#import <Foundation/Foundation.h>

@interface HelloWorld : NSObject

@property int accumulator;
- (void) hello;

@end

@implementation HelloWorld

@synthesize accumulator;

- (void) hello {
    NSLog(@"hello world!");
}

- (void) plusOne {
  accumulator += 1;
}

@end

int main(void) {
  HelloWorld *hw = [[HelloWorld alloc] init];
  [hw hello];
  
  NSArray *items = [[NSArray alloc] initWithObjects:@"すごい",@"中途半端",@"下らない",nil];

  NSLog(@"items:%@",[items description]);

  int i = 0;
  for (int i = 0; i < [items count]; i++)
  { 
    NSString *str = [items objectAtIndex:i];
    NSLog(@"str:%@",str);
  }

}
