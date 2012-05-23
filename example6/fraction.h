#import <Foundation/NSObject.h>

@interface Fraction: NSObject {
    int numerator;
    int denominator;
}
-(Fraction*) initWithNumerator: (int) n denominator: (int) d;

-(void) print;
-(void) setNumerator: (int) n andDenominator: (int) d;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
@end

