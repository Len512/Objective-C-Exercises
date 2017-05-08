#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *myCalc = [ [Calculator alloc] init];
        [myCalc setAccumulator:13];
        NSLog(@"Starting with %g", [myCalc accumulator]);
        NSLog(@"13 + 5 = %g", [myCalc add:5]);
        NSLog(@"13 - 45 = %g", [myCalc subtract:45]);
        NSLog(@"13 * 3 = %g", [myCalc multiple:3]);
        NSLog(@"13 / 2 = %g", [myCalc divide:2]);
        NSLog(@"- 13 = %g", [myCalc changeSign]);
        NSLog(@"1 / 13 = %g", [myCalc reciprocal]);
        NSLog(@"13 ^ 2 = %g", [myCalc xSquared]);
    }
    return 0;
}
