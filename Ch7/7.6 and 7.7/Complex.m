#import <Foundation/Foundation.h>
#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

- (void) print {
    NSLog(@"%g + %g i", real, imaginary);
}
- (void) setRealPart: (double) r setImaginaryPart: (double) i {
    real = r;
    imaginary = i;
}
- (Complex *) add: (Complex *) complexNum {
    Complex *result = [[Complex alloc] init];
    result.real = real + complexNum.real;
    result.imaginary = imaginary + complexNum.imaginary;
    return result;
}
@end
