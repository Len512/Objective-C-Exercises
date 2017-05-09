// Will your Fraction class work with negative fractions? For example,
// can you add –1/4 and –1/2 and get the correct result? When you think
// you have the answer, write a test program to try it.

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        Fraction *rFraction = [[Fraction alloc] init];
        double result;
        
        [aFraction setTo:-1 over:2];
        
        [bFraction setTo:-1 over:4];
        
        // Add b to a
        NSLog(@"-1/2 + -1/4 = ");
        rFraction = [aFraction add:bFraction];
        result = [rFraction convertToNum];
        NSLog(@" %g ", result);
        
        // Subtract b from a
        NSLog(@"-1/2 - -1/4 = ");
        rFraction = [aFraction subtract:bFraction];
        result = [rFraction convertToNum];
        NSLog(@" %g ", result);
        
        // Multiply a by b
        NSLog(@"-1/2 * -1/4 = ");
        rFraction = [aFraction multiply:bFraction];
        result = [rFraction convertToNum];
        NSLog(@" %g ", result);
        
        // Divide a with b
        NSLog(@"-1/2 / -1/4 = ");
        rFraction = [aFraction divide:bFraction];
        result = [rFraction convertToNum];
        NSLog(@" %g ", result);
        
    }
    return 0;
}
