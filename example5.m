#import <Foundation/Foundation.h>

/*
  This is adding a isURL method to NSString.
  (Utilities) is the name of the "category".
  
  It is very similar to a class declaration but it is NOT.
  Notice that it is not Inheriting from anywhere.
*/

@interface NSString (Utilities)
- (BOOL) isURL;
@end

@implementation NSString (Utilities)

- (BOOL) isURL
{
    if ( [self hasPrefix:@"http://"] )
        return YES;
    else
        return NO;
}

@end


int main(void) {
  
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSString* string1 = @"http://pixar.com/";
  NSString* string2 = @"Pixar";

  if ( [string1 isURL] )
      NSLog (@"string1 is a URL");

  if ( [string2 isURL] )
      NSLog (@"string2 is a URL");

}
