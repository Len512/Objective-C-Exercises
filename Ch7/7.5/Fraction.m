#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

- (void) print: (bool) b {
    
    if (numerator > denominator){
        int intPart;
        Fraction *restFraction = [[Fraction alloc] init];
        intPart = numerator/denominator;
        restFraction.numerator = numerator % denominator;
        restFraction.denominator = denominator;
        if (b) {
            [restFraction reduce];
        }
        NSLog(@"%i %i/%i ", intPart, restFraction.numerator, restFraction.denominator);
        
    } else if (b) {
        Fraction *reduced = [[Fraction alloc] init];
        reduced.numerator = numerator;
        reduced.denominator = denominator;
        [reduced reduce];
        NSLog(@" %i / %i ", reduced.numerator, reduced.denominator);
    } else {
        NSLog(@" %i / %i ", numerator, denominator);
    }
}
- (double) convertToNum {
    if (denominator != 0){
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}
- (void) setTo:(int)n over:(int)d {
    numerator = n;
    denominator = d;
}
- (Fraction *) add:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    [result print:YES];
    return result;
}
- (Fraction *) subtract: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    [result print:YES];
    return result;
}
- (Fraction *) multiply: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = f.numerator * numerator;
    result.denominator = f.denominator * denominator;
    [result reduce];
    [result print:YES];
    return result;
}
- (Fraction *) divide: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    [result reduce];
    [result print:YES];
    return result;
}
- (void) reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v!=0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
@end
