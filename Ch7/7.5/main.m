// Modify the Fraction’s print method to display fractions greater than 1 as mixed numbers.
// For example, the fraction 5/3 should be displayed as 1 2/3.

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        [aFraction setTo:10 over:4];
        [bFraction setTo:5 over:3];
        [aFraction print:YES];
        [aFraction print:NO];
        [bFraction print:NO];
    }
    return 0;
}
