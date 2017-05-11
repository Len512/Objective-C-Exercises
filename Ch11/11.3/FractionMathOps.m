#import <Foundation/Foundation.h>
#import "FractionMathOps.h"

@implementation Fraction (MathOps)

- (Fraction *) add: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
- (Fraction *) sub: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
- (Fraction *) mul: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
- (Fraction *) div: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    [result reduce];
    return result;
}
- (Fraction *) inv {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = denominator;
    result.denominator = numerator;
    [result reduce];
    return result;
}

@end
