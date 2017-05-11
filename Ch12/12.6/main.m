// Write a macro called IS_DIGIT that gives a nonzero value if a character is a digit 0 through 9.
// Use this macro in the definition of another macro called IS_SPECIAL, which gives a nonzero result
// if a character is a special character (that is, not alphabetic and not a digit).
// Be sure to use the IS_ALPHABETIC macro developed in Exercise 5.

#import <Foundation/Foundation.h>
#define IS_UPPER_CASE(char) (char>='A' && char<='Z')? 1 : 0
#define IS_LOWER_CASE(char) ( ((char) >= 'a') && ((char) <= 'z'))
#define IS_ALPHABETIC(char) ((IS_LOWER_CASE(char)) || (IS_UPPER_CASE(char)))
#define IS_DIGIT(char) (char>='0' && char <= '9')? 1 : 0
#define IS_SPECIAL(char) (IS_DIGIT(char) || IS_ALPHABETIC(char)) ? 0 : 1


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char a = '0', b = '3', c = '/';
        
        NSLog(@" a : %i, b : %i, c : %i", IS_SPECIAL(a), IS_SPECIAL(b), IS_SPECIAL(c));
        
    }
    return 0;
}
