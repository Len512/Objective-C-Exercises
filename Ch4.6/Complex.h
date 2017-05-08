#ifndef Complex_h
#define Complex_h

@interface Complex : NSObject
{
    double real;
    double imaginary;

}
- (void) setReal: (double) a;
- (void) setImaginary: (double) b;
- (void) print;
- (double) real;
- (double) imaginary;

@end

#endif /* Complex_h */
