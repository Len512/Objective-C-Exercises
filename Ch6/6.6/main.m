// Write a program that takes an integer keyed in from the terminal and extracts and
// displays each digit of the integer in English. So if the user types in 932, the program
// should display the following:
// nine
// three
// two

#import <Foundation/Foundation.h>
#import <math.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, digit, numberOfDigits = 0, isNegative = 0;
        int origNumber;
        
        NSLog(@"Enter your number: ");
        scanf("%i", &number);
        
        // If number is negative, set the flag to 1
        if (number < 0){
            isNegative = 1;
            number *= -1;
        }
        // Backup the number (unsigned)
        origNumber = number;
        
        // Calculate the number of digits
        do {
            digit = number % 10;
            number /= 10;
            numberOfDigits += 1;
        } while ( number != 0);
        
        NSLog(@"Number of digits: %i", numberOfDigits);
        int digitStorage[numberOfDigits];
        // Restore number
        number = origNumber;
        for (int i = 0; i < numberOfDigits; ++i){
            digitStorage[i] = number % 10;
            number /= 10;
        }
        if (isNegative){
            NSLog(@"minus");
        }
        // loop through the stored digits in reverse order
        // and print the literal for each one
        
        for (int i = numberOfDigits-1; i >= 0; --i){
            switch (digitStorage[i]) {
                case 1:
                    NSLog(@"one");
                    break;
                case 2:
                    NSLog(@"two");
                    break;
                case 3:
                    NSLog(@"three");
                    break;
                case 4:
                    NSLog(@"four");
                    break;
                case 5:
                    NSLog(@"five");
                    break;
                case 6:
                    NSLog(@"six");
                    break;
                case 7:
                    NSLog(@"seven");
                    break;
                case 8:
                    NSLog(@"eight");
                    break;
                case 9:
                    NSLog(@"nine");
                    break;
                case 0:
                    NSLog(@"zero");
                    break;
                default:
                    NSLog(@"Invalid number!");
                    break;
            }
        }
    }
    return 0;
}
