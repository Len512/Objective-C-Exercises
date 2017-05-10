#ifndef Fraction_h
#define Fraction_h

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}
@property int numerator, denominator;
- (id) initWith: (int) n over: (int) d;
- (void) print;
- (void) setTo: (int) n over: (int) d;
- (double) convertToNum;
- (Fraction *) add: (Fraction *) f;
- (id) addUsingId: (id) f;
- (void) reduce;
+ (Fraction *) allocF;
+ (int) count;
+ (int) getAddCounter;
@end

#endif /* Fraction_h */
