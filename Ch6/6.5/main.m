// Program to reverse the digits of an integer typed in from the
// terminal. However, this program does not function well if you type in a negative
// number. Find out what happens in such a case, and then modify the program so that
// negative numbers are correctly handled. By this, we mean that if the number -8645
// were typed in, for example, the output of the program should be 5468-.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, digit;
        char sign = '\0';
        NSLog(@"Enter your number: ");
        scanf("%i", &number);
        if (number <0) {
            sign = '-';
            number = -number;
        }
        do {
            digit = number % 10;
            number /= 10;
            NSLog(@"%i", digit);
        } while ( number != 0);
        if (sign == '-'){
            NSLog(@"%c", sign);
        }
    }
    return 0;
}
