/ Write a macro called IS_ALPHABETIC that gives a nonzero value if a character is an alphabetic character.
// Have the macro use the IS_LOWER_CASE macro defined in the chapter text and the IS_UPPER_CASE macro defined in Exercise 4.

#import <Foundation/Foundation.h>
#define MY_IS_UPPER_CASE(char) (char>='A' && char<='Z')? 1 : 0
#define MY_IS_LOWER_CASE(char) ( ((char) >= 'a') && ((char) <= 'z'))
#define MY_IS_ALPHABETIC(char) ((MY_IS_LOWER_CASE(char)) || (MY_IS_UPPER_CASE(char)))

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char a = 'A', b = 'h', c = '/';
        
        NSLog(@" a : %i, b : %i, c : %i", MY_IS_ALPHABETIC(a), MY_IS_ALPHABETIC(b), MY_IS_ALPHABETIC(c));
        
        
    }
    return 0;
}
