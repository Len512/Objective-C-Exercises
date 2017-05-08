// Modify the print method from the Fraction class so that whole numbers are displayed
// as such (so the fraction 5/1 should display as simply 5).Also modify the
// method to display fractions with a numerator of 0 as simply zero.

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [ [Fraction alloc] init];
        Fraction *bFraction = [ [Fraction alloc] init];
        Fraction *cFraction = [ [Fraction alloc] init];
        [aFraction setNumerator:5];
        [aFraction setDenominator:1];
        [cFraction setNumerator:0];
        [cFraction setDenominator:45];
        
        [aFraction print];
        NSLog(@" = ");
        NSLog(@"%g", [aFraction convertToNum]);
        
        [bFraction print];
        NSLog(@" = ");
        NSLog(@"%g", [bFraction convertToNum]);
        
        [cFraction print];
        NSLog(@" = ");
        NSLog(@"%g", [cFraction convertToNum]);
    }
    return 0;
}
