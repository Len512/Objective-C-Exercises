#import <Foundation/Foundation.h>
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Complex *myComplex = [ [Complex alloc] init];
        [myComplex setReal:4];
        [myComplex setImaginary:6];
        NSLog(@"Real part is %g", [myComplex real]);
        NSLog(@"Imaginary part is %g", [myComplex imaginary]);
        NSLog(@"Complex number is:");
        [myComplex print];
    }
    return 0;
}
