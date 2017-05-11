// Write a macro called IS_UPPER_CASE that gives a nonzero value if a character is an uppercase letter.

#import <Foundation/Foundation.h>
#define MY_IS_UPPER_CASE(char) (char>='A' && char<='Z')? 1 : 0

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char a = 'A', b = 'h', c = '/';
        NSLog(@" a : %i, b : %i, c : %i", MY_IS_UPPER_CASE(a), MY_IS_UPPER_CASE(b), MY_IS_UPPER_CASE(c));
    
    }
    return 0;
}
