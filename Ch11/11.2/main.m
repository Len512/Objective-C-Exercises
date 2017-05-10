// Add a category to the Fraction class called Comparison. In this category, add two
// methods according to these declarations:
// -(BOOL) isEqualTo: (Fraction *) f;
// -(int) compare: (Fraction *) f;
// The first method should return YES if the two fractions are identical and should return NO otherwise.
// Be careful about comparing fractions (for example, comparing 3/4 to 6/8 should return YES).
// The second method should return –1 if the receiver compares less than the fraction represented by the argument,
// return 0 if the two are equal, and return 1 if the re- ceiver is greater than the argument.

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "FractionMathOps.h"
#import "FractionComparison.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *a = [[Fraction alloc] init];
        Fraction *b = [[Fraction alloc] init];
        Fraction *c = [[Fraction alloc] init];
        
        [a setTo:1 over:3];
        [b setTo:3 over:4];
        [c setTo:6 over:8];
        
        printf("Fraction a: ");
        [a print];
        printf("Fraction b: ");
        [b print];
        printf("Fraction c: ");
        [c print];
        
        if ([a isEqualTo:b]){
            NSLog(@"Fractions are equal!");
        } else {
            if ([a compare:b] > 0){
                NSLog(@"Fraction a is greater than b");
            } else {
                NSLog(@"Fraction a is less than b");
            }
        }
        
        if ([c isEqualTo:b]){
            NSLog(@"Fractions are equal!");
        } else {
            if ([c compare:b] > 0){
                NSLog(@"Fraction c is greater than b");
            } else {
                NSLog(@"Fraction c is less than b");
            }
        }
    }
    return 0;
}
