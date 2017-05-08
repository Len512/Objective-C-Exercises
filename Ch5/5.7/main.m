// Program to reverse the digits of a number
// What would happen if you typed a negative number into Program 5.8? Try it
// and see.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit;
        NSLog (@"Enter your number.");
        scanf ("%i", &number);
        while ( number != 0 ) {
            right_digit = number % 10;
            NSLog (@"%i", right_digit);
            number /= 10;
        }
    }
    return 0;
}
