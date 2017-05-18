#import <Foundation/Foundation.h>

#ifndef Fraction_h
#define Fraction_h

@interface Fraction : NSObject <NSCopying>
{
    int numerator;
    int denominator;
}
@property int numerator, denominator;

- (id) initWith: (int) n over: (int) d;
- (id) init;
- (void) setTo: (int) n over: (int) d;
- (void) print;
- (NSString *) description;
- (double) convertToNum;
- (void) reduce;
- (id) copyWithZone:(NSZone *)zone;

@end

#endif /* Fraction_h */
