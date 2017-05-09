// Modify the print method from your Fraction class so that it takes an additional BOOL 
// argument that indicates whether the fraction should be reduced for display. 
// If it is to be reduced (that is if the argument is YES), be sure not to make any permanent changes to the fraction itself.

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        Fraction *rFraction = [[Fraction alloc] init];
        
        [aFraction setTo:1 over:2];
        
        [bFraction setTo:6 over:4];
        
        // Add b to a
        NSLog(@"1/2 + 6/4 = ");
        rFraction = [aFraction add:bFraction];
        
        // Subtract b from a
        NSLog(@"1/2 - 6/4 = ");
        rFraction = [aFraction subtract:bFraction];
        
        // Multiply a by b
        NSLog(@"1/2 * 6/4 = ");
        rFraction = [aFraction multiply:bFraction];
        
        // Divide a with b
        NSLog(@"1/2 / 6/4 = ");
        rFraction = [aFraction divide:bFraction];
        
    }
    return 0;
}
