// The functions sin (), cos (), and tan () are part of the Standard C Library (as scanf () is).
// These functions are declared in the system header file math.h, which is automatically imported
// into your program when you import Foundation.h.
// You can use these functions to calculate the sine, cosine, or tangent, respectively, of their double argument,
// which is expressed in radians.The result is also returned as a double precision floating-point value.
// So you can use this line to calculate the sine of d, with the angle d expressed in radians:
// result = sin (d);
// Add a category called Trig to the Calculator class defined in Chapter 6,“Making Decisions.”
// Add methods to this category to calculate the sine, cosine, and tangent based on these declarations:
// -(double) sin;
// -(double) cos;
// -(double) tan;

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "CalculatorTrig.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        double pi = M_PI;
        
        Calculator *myCalc = [[Calculator alloc] init];
        [myCalc setAccumulator:pi/2];
        
        NSLog(@"sin(pi/2) = %g ", [myCalc sin]);
        NSLog(@"cos(pi/2) = %g ", [myCalc cos]);
        NSLog(@"tan(pi/2) = %g ", [myCalc tan]);
        
        [myCalc clear];
        NSLog(@"sin(0) = %g ", [myCalc sin]);
        NSLog(@"cos(0) = %g ", [myCalc cos]);
        NSLog(@"tan(0) = %g ", [myCalc tan]);

    }
    return 0;
}
