#import <UIKit/UIKit.h>

@interface Fraction : NSObject

@property int numerator, denominator;

- (void) print;
- (void) setTo: (int) n over: (int) d;
- (Fraction *) add: (Fraction *) f;
- (Fraction *) sub: (Fraction *) f;
- (Fraction *) mul: (Fraction *) f;
- (Fraction *) div: (Fraction *) f;
- (void) reduce;
- (double) convertToNum;
- (NSString *) convertToString;

@end
