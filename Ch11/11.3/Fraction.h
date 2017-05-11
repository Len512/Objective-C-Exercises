#ifndef Fraction_h
#define Fraction_h

#import <Foundation/Foundation.h>

@protocol NSComparisonMethods

- (BOOL) isEqualTo: (id) object;
- (BOOL) isLessThanOrEqualTo: (id) object;
- (BOOL) isLessThan: (id) object;
- (BOOL) isGreaterThanOrEqualTo: (id) object;
- (BOOL) isGreaterThan: (id) object;
- (BOOL) isNotEqualTo: (id) object;

@end

@interface Fraction : NSObject <NSComparisonMethods>
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
