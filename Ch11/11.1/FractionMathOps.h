#ifndef FractionMathOps_h
#define FractionMathOps_h

#import "Fraction.h"

@interface Fraction (MathOps)

- (Fraction *) add: (Fraction *) f;
- (Fraction *) sub: (Fraction *) f;
- (Fraction *) mul: (Fraction *) f;
- (Fraction *) div: (Fraction *) f;
- (Fraction *) inv;

@end

#endif /* FractionMathOps_h */
