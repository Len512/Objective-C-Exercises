#ifndef Fraction_h
#define Fraction_h

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}
- (void) print;
- (void) setNumerator: (int) n;
- (void) setDenominator: (int) d;
- (int) numerator;
- (int) denominator;
- (double) convertToNum;

@end

#endif /* Fraction_h */
