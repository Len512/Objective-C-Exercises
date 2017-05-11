// Define a macro called MAX3 that gives the maximum of three values.Write a pro- gram to test the definition.

#import <Foundation/Foundation.h>
#define MYMAX(val1, val2) (val1<=val2)?val2:val1
#define MYMAX3(val1 ,val2, val3) MYMAX(MYMAX(val1,val2), val3)

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a = 13, b = 5, c = 7;
        NSLog(@"Out of a = %i , b = %i, c = %i, the maximum is: %i", a, b, c, MYMAX3(a, b, c));
        
    }
    return 0;
}
