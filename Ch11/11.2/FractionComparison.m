#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "FractionComparison.h"
#import "FractionMathOps.h"

@implementation Fraction (Comparison)
    
- (BOOL) isEqualTo: (Fraction *) f {
    [self reduce];
    [f reduce];
    if (numerator == f.numerator && denominator == f.denominator){
        return YES;
    } else {
        return NO;
    }
}
- (int) compare: (Fraction *) f {
    Fraction *result = [self sub:f];
    double resToNum = [result convertToNum];
    if ([self isEqualTo:f]){
        return 0;
    } else if (resToNum <0){
        return -1;
    } else {
        return 1;
    } 
}

@end
