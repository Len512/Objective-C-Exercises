#ifndef Fraction_h
#define Fraction_h

#import <Foundation/Foundation.h>

// The Fraction Class

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}
@property int numerator, denominator;

- (void) print;
- (double) convertToNum;
- (void) setTo: (int) n over: (int) d;
- (Fraction *) add: (Fraction *) f;
- (Fraction *) subtract: (Fraction *) f;
- (Fraction *) multiply: (Fraction *) f;
- (Fraction *) divide: (Fraction *) f;

- (void) reduce;

@end

#endif /* Fraction_h */
