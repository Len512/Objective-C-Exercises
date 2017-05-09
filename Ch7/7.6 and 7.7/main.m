// Exercise 6 in Chapter 4, “Data Types and Expressions,” defined a new class called Complex for working with complex imaginary numbers.
// Add a new method called add: that can be used to add two complex numbers.To add two complex numbers, you simply add the real parts
// and the imaginary parts, as shown here:
// (5.3 + 7i) + (2.7 + 4i) = 8 + 11i
// Have the add: method store and return the result as a new Complex number, based
// on the following method declaration:
// -(Complex *) add: (Complex *) complexNum;
// Make sure you address any potential memory leakage issues in your test program.
// Given the Complex class developed in exercise 6 of Chapter 4 and the extension made in exercise 6 of this chapter,
// create separate Complex.h and Complex.m interface and implementation files. Create a separate test program file to test everything.

#import <Foundation/Foundation.h>
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex *aComplex = [ [Complex alloc] init];
        [aComplex setRealPart:5.3 setImaginaryPart:7];
        Complex *bComplex = [[Complex alloc] init];
        [bComplex setRealPart:2.7 setImaginaryPart:4];
        Complex *result = [[Complex alloc] init];
        result = [aComplex add:bComplex];
        [aComplex print];
        NSLog(@"+");
        [bComplex print];
        NSLog(@"=");
        [result print];
    }
    return 0;
}
