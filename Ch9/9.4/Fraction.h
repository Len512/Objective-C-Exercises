#ifndef Fraction_h
#define Fraction_h

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}
@property int numerator, denominator;
- (void) print;
- (void) setTo: (int) n over: (int) d;
- (double) convertToNum;
- (Fraction *) add: (Fraction *) f;
- (id) addUsingId: (id) f;
- (void) reduce;
@end

#endif /* Fraction_h */
