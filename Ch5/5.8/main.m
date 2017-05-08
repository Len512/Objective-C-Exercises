// Write a program that calculates the sum of the digits of an integer. For example, the
// sum of the digits of the number 2155 is 2 + 1 + 5 + 5, or 13.The program should
// accept any arbitrary integer the user types.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, digit, sum, start;
        NSLog (@"Enter your number.");
        scanf ("%i", &number);
        sum = 0;
        start = number;
        while ( number != 0 ) {
            digit = number % 10;
            sum += digit;
            number /= 10;
        }
        if (start < 0){
            sum *= -1;
        }
        NSLog(@"The sum of digits of number %i is %i", start, sum);
    }
    return 0;
}
