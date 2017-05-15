#ifndef Fraction_h
#define Fraction_h

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}
@property int numerator, denominator;
- (id) initWith: (int) n over: (int) d;
- (id) init;
- (void) print;
- (void) setTo: (int) n over: (int) d;
- (double) convertToNum;
- (void) add: (Fraction *) f;
- (void) reduce;
- (NSString *) description;

@end

#endif /* Fraction_h */
