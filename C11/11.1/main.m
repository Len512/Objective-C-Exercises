// Extend the MathOps category from Program 11.1 to also include an invert
// method, which returns a Fraction that is an inversion of the receiver.

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "FractionMathOps.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *a = [[Fraction alloc] init];
        Fraction *b = [[Fraction alloc] init];
        Fraction *result;
        
        [a setTo:1 over:3];
        [b setTo:2 over:5];
        
        [a print];
        NSLog(@" + ");
        [b print];
        NSLog(@"--------");
        result = [a add:b];
        [result print];
        
        [a print];
        NSLog(@" - ");
        [b print];
        NSLog(@"--------");
        result = [a sub:b];
        [result print];
        
        [a print];
        NSLog(@" * ");
        [b print];
        NSLog(@"--------");
        result = [a mul:b];
        [result print];
        
        [a print];
        NSLog(@" / ");
        [b print];
        NSLog(@"--------");
        result = [a div:b];
        [result print];
        
        NSLog(@" 1 ");
        NSLog(@" / ");
        [a print];
        NSLog(@"--------");
        result = [a inv];
        [result print];
        
    }
    return 0;
}
