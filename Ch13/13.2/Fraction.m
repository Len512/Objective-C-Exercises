#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

- (void) print {
    NSLog(@" %i / %i", numerator, denominator);
}
- (void) setTo: (int) n over: (int) d {
    numerator = n;
    denominator = d;
}
- (int) convertToNum {
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}
- (void) reduce {
    int gcdVal = gcd(numerator, denominator);
    numerator /= gcdVal;
    denominator /= gcdVal;
}

static int gcd (int u, int v) {
    int temp;
    
    while (v != 0) {
        temp = u %v;
        u = v;
        v = temp;
    }
    return u;
}
- (Fraction *) initWith: (int) n over: (int) d {
    self = [super init];
    if (self) {
        [self setTo:n over:d];
    }
    return self;
}
- (Fraction *) init {
    return [self initWith:0 over:0];
}
@end
