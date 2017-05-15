#import "Fraction+Comparison.h"

@implementation Fraction (Comparison)

- (NSComparisonResult) compareFractions: (id) element {
    if ([self convertToNum] < [element convertToNum]){
        return (NSComparisonResult) NSOrderedDescending;
    }
    if ([self convertToNum] > [element convertToNum]){
        return (NSComparisonResult) NSOrderedAscending;
    }
    return (NSComparisonResult) NSOrderedSame;
}

@end
