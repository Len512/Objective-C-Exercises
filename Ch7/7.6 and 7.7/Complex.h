#ifndef Complex_h
#define Complex_h

@interface Complex : NSObject
{
    double real;
    double imaginary;
    
}
@property double real, imaginary;

- (void) print;
- (Complex *) add: (Complex *) complexNum;
- (void) setRealPart: (double) r setImaginaryPart: (double) i;
@end

#endif /* Complex_h */
