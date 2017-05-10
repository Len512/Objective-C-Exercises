#ifndef Fraction_h
#define Fraction_h

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}
@property int numerator, denominator;
- (void) setTo: (int) n over: (int) d;
- (void) reduce;
- (double) convertToNum;
- (void) print;
@end

#endif /* Fraction_h */
