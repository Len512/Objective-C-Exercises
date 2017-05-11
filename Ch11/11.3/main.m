// Extend the Fraction class by adding methods that conform to the informal proto- col NSComparisonMethods,
// as listed earlier in this chapter. Implement the first six methods from that protocol (isEqualTo:,
// isLessThanOrEqualTo:, is- LessThan:, isGreaterThanOrEqualTo:, isGreaterThan:, isNotEqualTo:) and test them.

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *a = [[Fraction alloc] init];
        Fraction *b = [[Fraction alloc] init];
        Fraction *c = [[Fraction alloc] init];
        
        [a setTo:1 over:2];
        [b setTo:1 over:4];
        [c setTo:2 over:4];
        
        if ([a isEqualTo:b]){
            NSLog(@"1/2 == 1/4");
        } else {
            NSLog(@"1/2 != 1/4");
        }
        if ([a isEqualTo:c]){
            NSLog(@"1/2 == 2/4");
        } else {
            NSLog(@"1/2 != 2/4");
        }
        if ([a isLessThanOrEqualTo:b]){
            NSLog(@"1/2 <= 1/4");
        } else {
            NSLog(@"1/2 > 1/4");
        }
        if ([a isLessThanOrEqualTo:c]){
            NSLog(@"1/2 <= 2/4");
        } else {
            NSLog(@"1/2 > 2/4");
        }
        if ([a isLessThan:b]){
            NSLog(@"1/2 < 1/4");
        } else {
            NSLog(@"1/2 >= 1/4");
        }
        if ([a isLessThan:c]){
            NSLog(@"1/2 < 2/4");
        } else {
            NSLog(@"1/2 >= 2/4");
        }
        if ([a isGreaterThanOrEqualTo:b]){
            NSLog(@"1/2 >= 1/4");
        } else {
            NSLog(@"1/2 < 1/4");
        }
        if ([a isGreaterThanOrEqualTo:c]){
            NSLog(@"1/2 >= 2/4");
        } else {
            NSLog(@"1/2 < 2/4");
        }
        if ([a isGreaterThan:b]){
            NSLog(@"1/2 > 1/4");
        } else {
            NSLog(@"1/2 <= 1/4");
        }
        if ([a isGreaterThan:c]){
            NSLog(@"1/2 > 2/4");
        } else {
            NSLog(@"1/2 <= 2/4");
        }
        if ([a isNotEqualTo:b]){
            NSLog(@"1/2 != 1/4");
        } else {
            NSLog(@"1/2 == 1/4");
        }
        if ([a isNotEqualTo:c]){
            NSLog(@"1/2 != 2/4");
        } else {
            NSLog(@"1/2 == 2/4");
        }
    }
    return 0;
}
