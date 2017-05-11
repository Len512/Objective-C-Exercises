// Write a macro called ABSOLUTE_VALUE that computes the absolute value of its argument.
// Make sure that the macro properly evaluates an expression such as this:
// ABSOLUTE_VALUE (x + delta)

#import <Foundation/Foundation.h>
#define ABSOLUTE_VALUE(x) ((x) < 0) ? -(x) : (x)


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a = 5, b = 11, c = -3;
        
        NSLog(@"The absolute value of %i is %i", a, ABSOLUTE_VALUE(a));
        NSLog(@"The absolute value of (%i-%i) is %i", a, b, ABSOLUTE_VALUE(a-b));
        NSLog(@"The absolute value of %i is %i", c, ABSOLUTE_VALUE(c));
                          
        
    }
    return 0;
}
