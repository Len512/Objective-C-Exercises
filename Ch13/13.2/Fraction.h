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
- (int) convertToNum;
- (void) reduce;
- (id) initWith: (int) n over: (int) d;
- (id) init;
@end

#endif /* Fraction_h */
