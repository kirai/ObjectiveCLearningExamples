#import <Foundation/Foundation.h>


int main(void) {
  
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSArray *items = [[NSArray alloc] initWithObjects:@"keywords",@"inside",@"are",nil];
  NSString *text = [[NSString alloc]initWithFormat:@"hello how are you I want to find keywords inside this string"];
  NSArray* words = [text componentsSeparatedByString: @" "];

  /*
    Search for items inside the text increment sum
  */

  int i = 0;
  int j = 0;
  int sum = 0;

  for ( i = 0; i < [words count]; i++ ) {
    for ( j =0; j < [items count]; j++ ) {    
      if ([[items objectAtIndex:j] isEqualToString:[words objectAtIndex:i]]) {
        sum++;
      }
    }
  } 

  NSLog(@"Number of items found in the text: %i",sum); 

  /*
   The same code in Ruby in one line

   p text.split(' ').inject(0) { |sum, word| items.include?(word) ? sum + 1 : sum  }
  */

}
