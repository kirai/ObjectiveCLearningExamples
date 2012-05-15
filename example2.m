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

    hw.accumulator = 5;
    [hw plusOne];
    NSLog(@"The accumulator value is %i", hw.accumulator);
    hw.accumulator +=1;
    NSLog(@"The accumulator value is %i", hw.accumulator);

    [hw release];
}
