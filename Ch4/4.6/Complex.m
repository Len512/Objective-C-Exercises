#import <Foundation/Foundation.h>
#import "Complex.h"

@implementation Complex

- (void) setReal: (double) a {
    real = a;
}
- (void) setImaginary: (double) b {
    imaginary = b;
}
- (void) print {
    NSLog(@"%g + %g i", real, imaginary);
}
- (double) real {
    return real;
}
- (double) imaginary {
    return imaginary;
}


@end
