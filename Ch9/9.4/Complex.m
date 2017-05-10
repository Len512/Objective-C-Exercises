#import <Foundation/Foundation.h>
#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

- (void) print {
    NSLog(@" %g + %gi ", real, imaginary);
}
- (void) setReal: (double) a andImaginary: (double) b {
    real = a;
    imaginary = b;
}
- (Complex *) add: (Complex *) c {
    Complex *result = [[Complex alloc] init];
    result.real = real + c.real;
    result.imaginary = imaginary + c.imaginary;
    return result;
}
- (id) addUsingId: (id) c {
    Complex *result = [[Complex alloc] init];
    result.real = [c real] + real;
    result.imaginary = [c imaginary] + imaginary;
    return result;
}

@end
