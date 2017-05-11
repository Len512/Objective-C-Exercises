#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "FractionMathOps.h"

@implementation Fraction

@synthesize numerator, denominator;

- (void) print {
    NSLog(@" %i/%i ", numerator, denominator);
}
- (void) setTo: (int) n over: (int) d {
    numerator = n;
    denominator = d;
}
- (double) convertToNum {
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}
- (void) reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}

- (BOOL) isEqualTo: (id) object {
    [self reduce];
    [object reduce];
    return ((numerator == [object numerator]) && (denominator == [object denominator])) ? YES : NO;
}
- (BOOL) isLessThanOrEqualTo: (id) object {
    Fraction *result = [self sub:object];
    double minus = [result convertToNum];
    return (minus <= 0) ? YES : NO;
}
- (BOOL) isLessThan: (id) object {
    Fraction *result = [self sub:object];
    double minus = [result convertToNum];
    return (minus < 0) ? YES : NO;
}
- (BOOL) isGreaterThanOrEqualTo: (id) object {
    Fraction *result = [self sub:object];
    double minus = [result convertToNum];
    return (minus >= 0) ? YES : NO;
}
- (BOOL) isGreaterThan: (id) object {
    Fraction *result = [self sub:object];
    double minus = [result convertToNum];
    return (minus > 0) ? YES : NO;
}
- (BOOL) isNotEqualTo: (id) object {
    [self reduce];
    [object reduce];
    return ((numerator == [object numerator]) && (denominator == [object denominator])) ? NO : YES; 
}

@end
