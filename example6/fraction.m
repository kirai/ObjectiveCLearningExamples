#import "fraction.h"
#import <stdio.h>

@implementation Fraction

-(Fraction*) initWithNumerator: (int) n denominator: (int) d {
    self = [super init];

    if ( self ) {
        [self setNumerator: n andDenominator: d];
    }

    return self;
}

-(void) print {
    printf( "%i/%i", numerator, denominator );
}

-(void) setNumerator: (int) n andDenominator: (int) d {
    numerator = n;
    denominator = d;
}

-(void) setNumerator: (int) n {
    numerator = n;
}

-(void) setDenominator: (int) d {
    denominator = d;
}

-(int) denominator {
    return denominator;
}

-(int) numerator {
    return numerator;
}
@end
