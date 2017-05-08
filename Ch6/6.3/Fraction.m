#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction

- (void) print {
    if (numerator == 0 && denominator == 0){
        NSLog(@" %i/%i ", numerator, denominator);
    } else if (numerator % denominator != 0) {
        NSLog(@" %i/%i ", numerator, denominator);
    } else {
        NSLog(@" %i ", numerator / denominator);
    }
}
- (void) setNumerator: (int) n {
    numerator = n;
}
- (void) setDenominator: (int) d {
    denominator = d;
}
- (int) numerator {
    return numerator;
}
- (int) denominator {
    return denominator;
}
- (double) convertToNum {
    if (denominator!=0){
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}

@end
