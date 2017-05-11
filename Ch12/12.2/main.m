// Define a macro called MIN that gives the minimum of two values.Then write a pro- gram to test the macro definition.

#import <Foundation/Foundation.h>

#define MYMIN(val1,val2) (val1<=val2)?val1:val2

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a = 2, b = 5;
        NSLog(@"Out of a = 2 and b = 5, the minimum is: %i", MYMIN(a,b));
        
    }
    return 0;
}
