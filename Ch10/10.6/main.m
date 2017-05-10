// Based on the following definitions
// float     f   1.00;
// short int i   100;
// long int  l   500L;
// double    d   15.00;
// and the seven steps outlined in this chapter for the conversion of operands in ex-
// pressions, determine the type and value of the following expressions:
// f+ i
// l/ d
// i/l+ f
// l* i
// f/ 2
// i / (d + f)
// l / (i * 2.0)
// l + i / (double) l

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float     f = 1.00;
        short int i = 100;
        long int  l = 500L;
        double    d = 15.00;
        
        NSLog(@"f + i = %f", f + i);
        NSLog(@"l / d = %g", l / d);
        NSLog(@"i / l + f = %f", i / l + f);
        NSLog(@"l * i = %li", l * i);
        NSLog(@"f / 2 = %f", f / 2);
        NSLog(@"i / (d + f) = %f", i / (d + f));
        NSLog(@"l / (i * 2.0) = %f", l / (i * 2.0));
        NSLog(@"l + i / (double) l = %g", l + i / (double) l);
    }
    return 0;
}
