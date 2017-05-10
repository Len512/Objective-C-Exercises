#ifndef FractionComparison_h
#define FractionComparison_h

#import "Fraction.h"

@interface Fraction (Comparison)

- (BOOL) isEqualTo: (Fraction *) f;
- (int) compare: (Fraction *) f;

@end

#endif /* FractionComparison_h */
