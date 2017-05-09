// Add the following methods to the Fraction class to round out the arithmetic
// operations on fractions. Reduce the result within the method in each case:
// Subtract argument from receiver
// –(Fraction *) subtract: (Fraction *) f;
// Multiply receiver by argument
// –(Fraction *) multiply: (Fraction *) f;
// Divide receiver by argument
// –(Fraction *) divide: (Fraction *) f;

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        Fraction *rFraction = [[Fraction alloc] init];
        
        [aFraction setTo:1 over:2];
        
        [bFraction setTo:1 over:4];
        
        // Add b to a
        rFraction = [aFraction add:bFraction];
        NSLog(@"1/2 + 1/4 = ");
        [rFraction print];
        
        // Subtract b from a
        rFraction = [aFraction subtract:bFraction];
        NSLog(@"1/2 - 1/4 = ");
        [rFraction print];
        
        // Multiply a by b
        rFraction = [aFraction multiply:bFraction];
        NSLog(@"1/2 * 1/4 = ");
        [rFraction print];
        
        // Divide a with b
        rFraction = [aFraction divide:bFraction];
        NSLog(@"1/2 / 1/4 = ");
        [rFraction print];
        
    }
    return 0;
}
