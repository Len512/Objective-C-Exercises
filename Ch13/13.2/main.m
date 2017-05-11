// The reduce method from your Fraction class finds the greatest common divisor of the numerator and denominator
// to reduce the fraction. Modify that method so that it uses the gcd function from Program 13.5 instead.
// Where do you think you should place the function definition? Are there any benefits to making the function static?
// Which approach do you think is better, using a gcd function or incorporating the code directly into the method
// as you did previously? Why?

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *myFrac = [[Fraction alloc] initWith:4 over:10];
        [myFrac print];
        [myFrac reduce];
        [myFrac print];
        
    }
    return 0;
}
